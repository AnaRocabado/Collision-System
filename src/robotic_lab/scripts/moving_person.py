#!/usr/bin/env python



import rospy 
import rospkg 
from gazebo_msgs.msg import ModelState 
from gazebo_msgs.srv import SetModelState
import math
import random

def move_person():

    rospy.init_node('set_pose', anonymous=True)
    rate = rospy.Rate(5) # hz



    pos_person=[1.3,1.3] #(x,y) inicial

    x=1.3
    y=1.3
    alpha=0

    
    while not rospy.is_shutdown():

        #delta_x=[-.1,0,.1][random.randrange(3)]
        #delta_y=[-.1,0,.1][random.randrange(3)]



        if((x>-1.2 and x<3.7 and y>-1.1 and y<1.5)) :

            #or (pos_person[0]>1.3 and pos_person[0]<3.8 and pos_person[1]>1.5 and pos_person[1]<5.6))



            if((x>=0.5 and y>=0.5) or (x>=0.5 and y<=-0.5) or (x<=-0.5 and y<=-0.5) or (x<=-0.5 and y>=0.5)):


                delta_x=[-.05,0,.05][random.randrange(3)]
                delta_y=[-.05,0,.05][random.randrange(3)]


                x+=delta_x
                y+=delta_y

            else:

                x-=delta_x
                y-=delta_y

        else:

            x-=delta_x
            y-=delta_y





        alpha+=math.pi/180


        state_msg = ModelState()
        state_msg.model_name = 'person_standing'
        state_msg.pose.position.x = x
        state_msg.pose.position.y = y
        state_msg.pose.position.z = 0.01
        #state_msg.pose.orientation.x = pos_person[3]
        #state_msg.pose.orientation.y = pos_person[4]
        #state_msg.pose.orientation.z = alpha
        #state_msg.twist.angular.z = alpha
        #state_msg.pose.orientation.w = pos_person[6]



        rospy.wait_for_service('/gazebo/set_model_state')
        try:
            set_state = rospy.ServiceProxy('/gazebo/set_model_state', SetModelState)
            resp = set_state( state_msg )
            rospy.loginfo(state_msg)
            rate.sleep()

        except rospy.ServiceException, e:
            print("Service call failed: %s" % e)






if __name__ == '__main__':
    try:
        move_person()
    except rospy.ROSInterruptException:

        pass