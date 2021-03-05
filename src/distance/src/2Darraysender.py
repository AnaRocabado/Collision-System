#globales

#camera_info_intrinsics=[]
#depth_array=[[]]


class Server:

    def __init__(self):
        self.camera_info_intrinsics = None
        self.depth_array = None
        


    def camera_intrinsics (self, camera_info):

        camera_info_K = np.array(camera_info.K).reshape([3, 3])
        #fx,fy,cx,cy
        self.camera_info_intrinsics = np.array([camera_info_K[0,0],camera_info_K[1,1],camera_info_K[0,2],camera_info_K[1,2]])
        #rospy.loginfo(np.shape(self.camera_info_intrinsics))

        self.point_cloud()

    def convert_depth_image(self, ros_image):

        bridge = CvBridge()
        
        try:
            depth_image = bridge.imgmsg_to_cv2(ros_image)
            depth_array = np.array(depth_image, dtype=np.float32)
            
            rospy.loginfo(np.shape(self.depth_array))

        except CvBridgeError, e:
            print e

    def point_cloud(self):
        """Transform a depth image into a point cloud with one point for each
        pixel in the image, using the camera transform for a camera
        centred at cx, cy with field of view fx, fy.

        depth is a 2-D ndarray with shape (rows, cols) containing
        depths from 1 to 254 inclusive. The result is a 3-D array with
        shape (rows, cols, 3). Pixels with invalid depth in the input have
        NaN for the z-coordinate in the result.

        """
        if self.camera_info_intrinsics is not None and self.depth_array is not None:
            rospy.loginfo(self.camera_info_intrinsics)


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

 
'''

if __name__ == '__main__':
    rospy.init_node('listener')

    server = Server()

    rospy.Subscriber('/orientation', Float64MultiArray , server.orientation_callback)
    rospy.Subscriber('/velocity', Float64MultiArray, server.velocity_callback)

    rospy.spin()