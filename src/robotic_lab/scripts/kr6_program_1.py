#!/usr/bin/env python


import rospy
from std_msgs.msg import String
from std_msgs.msg import Float64
import math

def talker():
    pub_1 = rospy.Publisher('/joint_a1_position_controller/command', Float64, queue_size=10)
    pub_2 = rospy.Publisher('/joint_a2_position_controller/command', Float64, queue_size=10)
    pub_3 = rospy.Publisher('/joint_a3_position_controller/command', Float64, queue_size=10)
    pub_4 = rospy.Publisher('/joint_a4_position_controller/command', Float64, queue_size=10)
    pub_5 = rospy.Publisher('/joint_a5_position_controller/command', Float64, queue_size=10)
    
    rospy.init_node('angle_sender', anonymous=True)
    rate = rospy.Rate(1) # 10hz
    
    pos1=[-math.pi/4,-math.pi/3,3*math.pi/4,0,0]
    pos2=[math.pi/4,-math.pi/3,3*math.pi/4,0,0]

    while not rospy.is_shutdown():
           
        pub_1.publish(pos1[0])
        pub_2.publish(pos1[1])
        pub_3.publish(pos1[2])
        pub_4.publish(pos1[3])
        pub_5.publish(pos1[4])
        rospy.loginfo(pos1)
        rate.sleep()

        pub_1.publish(pos2[0])
        pub_2.publish(pos2[1])
        pub_3.publish(pos2[2])
        pub_4.publish(pos2[3])
        pub_5.publish(pos2[4])

        rospy.loginfo(pos2)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass


