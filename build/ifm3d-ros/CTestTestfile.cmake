# CMake generated Testfile for 
# Source directory: /home/ana/collision_system_ws/src/ifm3d-ros
# Build directory: /home/ana/collision_system_ws/build/ifm3d-ros
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_ifm3d_rostest_test_ifm3d.test "/home/ana/collision_system_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/ana/collision_system_ws/build/test_results/ifm3d/rostest-test_ifm3d.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/ana/collision_system_ws/src/ifm3d-ros --package=ifm3d --results-filename test_ifm3d.xml --results-base-dir \"/home/ana/collision_system_ws/build/test_results\" /home/ana/collision_system_ws/src/ifm3d-ros/test/ifm3d.test ")
add_test(_ctest_ifm3d_nosetests_test "/home/ana/collision_system_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/ana/collision_system_ws/build/test_results/ifm3d/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/ana/collision_system_ws/build/test_results/ifm3d" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/ana/collision_system_ws/src/ifm3d-ros/test --with-xunit --xunit-file=/home/ana/collision_system_ws/build/test_results/ifm3d/nosetests-test.xml")
