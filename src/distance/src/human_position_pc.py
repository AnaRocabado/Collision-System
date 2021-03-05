#!/usr/bin/env python



import rospy
from sensor_msgs.msg import Image
from darknet_ros_msgs.msg import BoundingBoxes
from cv_bridge import CvBridge, CvBridgeError
from std_msgs.msg import Float32MultiArray
from std_msgs.msg import Header
from std_msgs.msg import String
from sensor_msgs.msg import PointCloud2, PointField
from sensor_msgs.msg import CameraInfo
from sensor_msgs import point_cloud2
from matplotlib.pylab import plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np
from open3d import *

#globales

#camera_info_intrinsics=[]
#depth_array=[[]]


class Server:

    def __init__(self):
        self.camera_info_intrinsics = None
        self.depth_array = None
        self.datagot= False
        self.pxToMetre =1
        


    def camera_intrinsics (self, camera_info):

        camera_info_K = np.array(camera_info.K).reshape([3, 3])
        #fx,fy,cx,cy
        self.camera_info_intrinsics = np.array([camera_info_K[0,0],camera_info_K[1,1],camera_info_K[0,2],camera_info_K[1,2]])
        #if (not self.datagot):
            #detected = True

            #self.point_cloud()

    def convert_depth_image(self, ros_image):

        bridge = CvBridge()
        
        try:
            depth_image = bridge.imgmsg_to_cv2(ros_image)
            self.depth_array = np.array(depth_image, dtype=np.float32)
            if (not self.datagot):
            
                self.point_cloud()

        except CvBridgeError, e:
            print e

    def point_cloud(self):
        #rospy.loginfo(np.shape(self.camera_info_intrinsics))
        #rospy.loginfo(np.shape(self.depth_array))

        """Transform a depth image into a point cloud with one point for each
        pixel in the image, using the camera transform for a camera
        centred at cx, cy with field of view fx, fy.

        depth is a 2-D ndarray with shape (rows, cols) containing
        depths from 1 to 254 inclusive. The result is a 3-D array with
        shape (rows, cols, 3). Pixels with invalid depth in the input have
        NaN for the z-coordinate in the result.

        """
        #if self.camera_info_intrinsics is not None and self.depth_array is not None:
        #    rospy.loginfo(self.camera_info_intrinsics)

        
        
        pub = rospy.Publisher("person_PointCloud", PointCloud2, queue_size=1000000)   

        h, w = np.shape(self.depth_array)
        
        intrinsic = np.array([w,h,camera_info_intrinsics[0],camera_info_intrinsics[1],camera_info_intrinsics[2],camera_info_intrinsics[3]])

        
        pcloud=open3d.geometry.create_point_cloud_from_depth_image(self.depth_array, intrinsic, extrinsic=default, depth_scale=1000.0, depth_trunc=1000.0, stride=1)  
        
        pub.publish(pcloud)


        '''
        rows, cols = np.shape(self.depth_array)
        

        c, r = np.meshgrid(np.arange(cols), np.arange(rows), sparse=True)


        valid = (self.depth_array > 0) & (self.depth_array < 255)
        z = np.where(valid, self.depth_array / 256, np.nan)
        x = np.where(valid, z * (rows - self.camera_info_intrinsics[2]) / self.camera_info_intrinsics[0], 0)
        y = np.where(valid, z * (cols - self.camera_info_intrinsics[3]) / self.camera_info_intrinsics[1], 0)
        #pub_pc.publish(np.dstack((x, y, z)))
        
        

        cloud=np.dstack((x, y, z))
        rospy.loginfo(np.shape(cloud))
        fig = plt.figure()
        ax = plt.axes(projection='3d')
        ax.scatter(x, y, z, c=z, cmap='Greens');
        plt.show(block=True)


  
        
        #fields = [PointField('x', 0, PointField.FLOAT32, 1),
        #    PointField('y', 4, PointField.FLOAT32, 1),
        #    PointField('z', 8, PointField.FLOAT32, 1),
            # PointField('rgb', 12, PointField.UINT32, 1),
        #    PointField('rgba', 12, PointField.UINT32, 1),
        #    ]


        #points = [[point.x, point.y, point.z] for point in pointcloud_input.points]
        #header = Header()
        #header.stamp = rospy.Time.now()
        #header.frame_id = "velodyne"


        #pcloud = point_cloud2.create_cloud(header, fields, cloud)
        #points = point_cloud2.create_cloud_xyz32(header, [x,y,z])

        #pub.publish(pcloud)
        
        '''

 
'''

if __name__ == '__main__':
    rospy.init_node('listener')

    server = Server()

    rospy.Subscriber('/orientation', Float64MultiArray , server.orientation_callback)
    rospy.Subscriber('/velocity', Float64MultiArray, server.velocity_callback)

    rospy.spin()



def camera_intrinsics (camera_info):


    global camera_info_intrinsics
    camera_info_K = np.array(camera_info.K).reshape([3, 3])
    #fx,fy,cx,cy
    camera_info_intrinsics = np.array([camera_info_K[0,0],camera_info_K[1,1],camera_info_K[0,2],camera_info_K[1,2]])
    #rospy.loginfo(camera_info_intrinsics)
    #rospy.loginfo(camera_info_intrinsics)
    #return(camera_info_intrinsics)

def convert_depth_image(ros_image):
    
    global depth_array

    bridge = CvBridge()
    
    try:
        depth_image = bridge.imgmsg_to_cv2(ros_image)
        depth_array = np.array(depth_image, dtype=np.float32)
        
        return(depth_array)

    except CvBridgeError, e:
        print e


def point_cloud():
    """Transform a depth image into a point cloud with one point for each
    pixel in the image, using the camera transform for a camera
    centred at cx, cy with field of view fx, fy.

    depth is a 2-D ndarray with shape (rows, cols) containing
    depths from 1 to 254 inclusive. The result is a 3-D array with
    shape (rows, cols, 3). Pixels with invalid depth in the input have
    NaN for the z-coordinate in the result.

    """
    
    global camera_info_intrinsics, depth_array
    rospy.loginfo(camera_info_intrinsics)


    """
    pub = rospy.Publisher("person_PointCloud", PointCloud2, queue_size=1000000)
    depth_array=np.array(depth_array)     
    rows, cols = np.shape(depth_array)
    c, r = np.meshgrid(np.arange(cols), np.arange(rows), sparse=True)
    valid = (depth_array > 0) & (depth_array < 255)
    z = np.where(valid, depth_array / 256, np.nan)
    x = np.where(valid, z * (c - camera_info_intrinsics[2]) / camera_info_intrinsics[0], 0)
    y = np.where(valid, z * (r - camera_info_intrinsics[3]) / camera_info_intrinsics[1], 0)
    #pub_pc.publish(np.dstack((x, y, z)))
    cloud=np.dstack((x, y, z))
    rospy.loginfo(depth_array)



    
    
    fields = [PointField('x', 0, PointField.FLOAT32, 1),
        PointField('y', 4, PointField.FLOAT32, 1),
        PointField('z', 8, PointField.FLOAT32, 1),
        # PointField('rgb', 12, PointField.UINT32, 1),
        PointField('rgba', 12, PointField.UINT32, 1),
        ]


    #points = [[point.x, point.y, point.z] for point in pointcloud_input.points]
    header = Header()
    header.stamp = rospy.Time.now()
    header.frame_id = "velodyne"


    pcloud = point_cloud2.create_cloud(header, fields, cloud)
    #points = point_cloud2.create_cloud_xyz32(header, [x,y,z])

    pub.publish(pcloud)

    """






def main():
    while not rospy.is_shutdown():
        rospy.init_node('distance', anonymous=True)
        rospy.Subscriber('/camera/color/camera_info', CameraInfo , camera_intrinsics)
        #rospy.Subscriber('/person_distance', Image, convert_depth_image, queue_size=1)
        point_cloud()
        rospy.spin()

'''
if __name__ == '__main__':
    try :
        
        #def main(self):
        while not rospy.is_shutdown():
            server = Server()
            rospy.init_node('distance', anonymous=True)
            rospy.Subscriber('/camera/color/camera_info', CameraInfo , server.camera_intrinsics)
            rospy.Subscriber('/person_distance', Image, server.convert_depth_image, queue_size=1)
            #server.point_cloud()

            rospy.spin()

    except rospy.ROSInterruptException:
        pass
