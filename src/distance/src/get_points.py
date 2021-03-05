#! /usr/bin/env python

from sensor_msgs.msg import PointCloud2
from sensor_msgs import point_cloud2
import rospy
import time
import numpy as np

def callback_pointcloud(data):
    assert isinstance(data, PointCloud2)
    gen = point_cloud2.read_points(data, field_names=("x", "y", "z"), skip_nans=True)
    rospy.loginfo(type(gen))
    rospy.loginfo("CLOUD")
    for p in gen:
      rospy.loginfo(" x : %.3f  y: %.3f  z: %.3f" %(p[0],p[1],p[2]))

    gen_array = np.array(list(gen))
    rospy.loginfo(np.shape(gen_array))



def main():
    rospy.init_node('pcl_listener', anonymous=True)
    rospy.Subscriber('/kinect2/sd/points', PointCloud2, callback_pointcloud)
    rospy.spin()

if __name__ == "__main__":
    main()