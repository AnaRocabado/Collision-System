 #include <ros/ros.h>
 #include <nodelet/nodelet.h>
 #include <image_transport/image_transport.h>
 #include <image_transport/subscriber_filter.h>
 #include <message_filters/subscriber.h>
 #include <message_filters/synchronizer.h>
 #include <message_filters/sync_policies/exact_time.h>
 #include <message_filters/sync_policies/approximate_time.h>
 #include <sensor_msgs/image_encodings.h>
 #include <sensor_msgs/point_cloud2_iterator.h>
 #include <sensor_msgs/PointCloud2.h>
 #include <image_geometry/pinhole_camera_model.h>
 #include <depth_image_proc/depth_traits.h>
 #include <cv_bridge/cv_bridge.h>
 #include <opencv2/imgproc/imgproc.hpp>

void frameCallback(const sensor_msgs::ImageConstPtr& msg) {

    if (!gotInfo) return;

    vector<float> points;

    cv_bridge::CvImageConstPtr image =  cv_bridge::toCvShare(msg);
    for(int i =0;i<image->image.rows;i++){
        const ushort* row_ptr = image->image.ptr<ushort>(i);
        for(int j=0;j<image->image.cols;j++){
            ushort id=row_ptr[j];
            if(id!=0){
                float d=depth_scale*id;
                Eigen::Vector3f image_point(j*d,i*d,d);
                Eigen::Vector3f camera_point=invK*image_point;
                points.push_back(camera_point.x());
                points.push_back(camera_point.y());
                points.push_back(camera_point.z());
            }
        }
    }

    int n_points = points.size();

    // Create a PointCloud2
    sensor_msgs::PointCloud2 cloud_msg;
    sensor_msgs::PointCloud2Modifier modifier(cloud_msg);
    modifier.setPointCloud2Fields(3, "x", 1, sensor_msgs::PointField::FLOAT32,
                                  "y", 1, sensor_msgs::PointField::FLOAT32,
                                  "z", 1, sensor_msgs::PointField::FLOAT32);
    modifier.setPointCloud2FieldsByString(1, "xyz");
    modifier.resize(n_points);

    sensor_msgs::PointCloud2Iterator<float> iter_x(cloud_msg, "x");
    sensor_msgs::PointCloud2Iterator<float> iter_y(cloud_msg, "y");
    sensor_msgs::PointCloud2Iterator<float> iter_z(cloud_msg, "z");

    cloud_msg.height = 1;
    cloud_msg.width = n_points;
    cloud_msg.header.frame_id = msg->header.frame_id;
    cloud_msg.header.seq = msg->header.seq;
    cloud_msg.header.stamp = msg->header.stamp;

    for(size_t i=0; i<n_points; ++i, ++iter_x, ++iter_y, ++iter_z){
        *iter_x = points[3*i+0];
        *iter_y = points[3*i+1];
        *iter_z = points[3*i+2];

        cerr << *iter_x << " " << *iter_y << " " << *iter_z << endl;
    }

    cloud_pub.publish(cloud_msg);
    std::cerr << ".";
}

int main(int argc, char **argv){
 
   ros::init(argc, argv, "distance");
 

   ros::NodeHandle n;

   ros::Subscriber sub = n.subscribe("/camera/depth/image_raw", Image, chatterCallback);

   ros::spin();
 
   return 0;
 }
