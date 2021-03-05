#!/usr/bin/env python



import rospy
from sensor_msgs.msg import Image
from darknet_ros_msgs.msg import BoundingBoxes
from cv_bridge import CvBridge, CvBridgeError
from std_msgs.msg import Float32MultiArray, MultiArrayLayout, MultiArrayDimension
from std_msgs.msg import Header
from std_msgs.msg import String
from matplotlib.pylab import plt
import numpy as np
import cv2 as cv

#globales

box_people=np.zeros(4)
detected=False
depth_array=[[]]
color_array=[[]]

 

def callback(data):
    global box_people,detected
    for box in data.bounding_boxes:
        box_people=np.array([box.xmin, box.xmax, box.ymin, box.ymax])
        rospy.loginfo(box_people)
        if (not detected):
            detected = True

def convert_depth_image(ros_image):
    
    global depth_array

    bridge = CvBridge()
    # Use cv_bridge() to convert the ROS image to OpenCV format
    try:
        #Convert the depth image using the default passthrough encoding
        #depth_image = bridge.imgmsg_to_cv2(ros_image, deside_encoding="passthrough")
        #depth_image = bridge.imgmsg_to_cv2(ros_image, encoding="bgr8")
        depth_image = bridge.imgmsg_to_cv2(ros_image)
        depth_array = np.array(depth_image, dtype=np.float32)
        #rospy.loginfo(np.shape(depth_array))
        

    except CvBridgeError, e:
        print e
    #Convert the depth image to a Numpy array


'''
def callback_pointcloud(data):
    global depth_array

    assert isinstance(data, PointCloud2)
    gen = point_cloud2.read_points(data, field_names=("x", "y", "z"), skip_nans=True)
    depth_array=gen

'''

def convert_color_image(ros_image):
    
    global color_array

    bridge = CvBridge()
    # Use cv_bridge() to convert the ROS image to OpenCV format
    try:
        #Convert the depth image using the default passthrough encoding
        #depth_image = bridge.imgmsg_to_cv2(ros_image, deside_encoding="passthrough")
        #depth_image = bridge.imgmsg_to_cv2(ros_image, encoding="bgr8")
        color_image = bridge.imgmsg_to_cv2(ros_image)
        color_array = np.array(color_image, dtype=np.float32)
        #rospy.loginfo(np.shape(depth_array))
        

    except CvBridgeError, e:
        print e


def tensor_people():

    global box_people,detected, depth_array, color_array
    pub_d = rospy.Publisher('person_depth', Image)
    pub_c = rospy.Publisher('person_color', Image)

    bridge = CvBridge()
    #rate = rospy.Rate(10) # 10hz

    while not rospy.is_shutdown():

        depth_people_array = depth_array
        color_people_array = color_array

        if(detected):

            #n,m =np.shape(depth_people_array)
            depth_people_array = depth_people_array[box_people[2]:box_people[3],box_people[0]:box_people[1]]

            color_people_array = color_people_array[box_people[2]:box_people[3],box_people[0]:box_people[1]]
            #depth_people = MultiArrayLayout(data=depth_people_array )
            
            depth_message = bridge.cv2_to_imgmsg(depth_people_array, encoding="passthrough")
            color_message = bridge.cv2_to_imgmsg(color_people_array, encoding="passthrough")


            pub_d.publish(depth_message)
            pub_c.publish(color_message)
            #rospy.loginfo(depth_people)
            #np.savetxt('/home/ana/collision_system_ws/src/distance/src/depth_people_array.out', depth_people_array, delimiter=',') 
            #rate.sleep()
            #plt.matshow(depth_people_array,cmap=plt.cm.jet,interpolation='bicubic')#see imshow for more arguments
            #plt.matshow(depth_people_array, cmap=plt.cm.viridis)
            #plt.colorbar()
            #plt.show(block=True)



def main():
    while not rospy.is_shutdown():
        rospy.init_node('distance', anonymous=True)
        rospy.Subscriber('/darknet_ros/bounding_boxes', BoundingBoxes , callback)
        rospy.Subscriber("/camera/depth/image_raw", Image, convert_depth_image, queue_size=1)
        rospy.Subscriber("/camera/color/image_raw", Image, convert_color_image, queue_size=1)
        #rospy.Subscriber('/camera/depth/points', PointCloud2, callback_pointcloud)
        tensor_people()
        rospy.spin()


if __name__ == '__main__':
    try :
        main()
    except rospy.ROSInterruptException:
        pass
