sudo chmod 777 /dev/ttyACM0  & sleep 1s;

sudo ./scrips/max_cpu_freq.sh;
sudo ./scrips/max_emc_freq.sh;
sudo ./scrips/max_gpu_freq.sh;

roslaunch realsense2_camera rs_camera.launch & sleep 5;
#roslaunch mavros px4.launch & sleep 5;

rosrun vins vins_node /home/nv/Desktop/catkin_ws/src/VINS-Fusion-gpu/config/px4/stereo_imu_config.yaml & sleep 10;
rosrun vins fcu_node
#roslaunch px4ctrl run_ctrl.launch & sleep 1;

#roslaunch carctrl ctrl.launch & sleep 5s;
#roslaunch plan_manage kino_replan.launch


#roslaunch odom_visualization odom_visualization.launch & sleep 2;

#roslaunch flycar flycar_node.launch & sleep 5;

wait;
