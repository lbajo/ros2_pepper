#!/bin/bash

source /home/nao/System/setup_ros1_pepper.bash

export PYTHONHOME="/home/nao/System/Python-3.6.1"
export PATH="${PYTHONHOME}/bin:${PATH}"
export LD_LIBRARY_PATH="/home/nao/System/ros1_dependencies/lib:${PYTHONHOME}/lib:${LD_LIBRARY_PATH}"
export ROS_IP=$(ip addr show wlan0 | grep -Po '(?<= inet )([0-9]{1,3}.){3}[0-9]{1,3}')
export NAO_IP=$ROS_IP
export ROS_MASTER_URI=http://127.0.0.1:11311

source /home/nao/System/ros2_inst/local_setup.bash
