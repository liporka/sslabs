#!/bin/bash

rosservice call /reset
rosparam set /background_r 255
rosparam set /background_g 255
rosparam set /background_b 255
rosservice call /clear
rosservice call /turtle1/set_pen 0 0 0 3 1
rosservice call /turtle1/teleport_absolute 2 4.75 1.5708
rosservice call /turtle1/set_pen 0 0 0 3 0

function teleport() {
	rosservice call /turtle1/set_pen 0 0 0 3 1
	rosservice call /turtle1/teleport_relative "linear: 0.75
angular: -1.5708"
	rosservice call /turtle1/teleport_relative "linear: 0.0
angular: 1.5708" 
	rosservice call /turtle1/set_pen 0 0 0 3 0
}

function zero() {
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.7854, 0.0, 0.0]' '[0.0, 0.0, -3.1416]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.7854, 0.0, 0.0]' '[0.0, 0.0, -3.1416]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
}

function one() {
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -0.7854]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.3536, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -2.3562]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.5708]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.25, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 3.1416]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
	rosservice call /turtle1/set_pen 0 0 0 3 1
	rosservice call /turtle1/teleport_relative "linear: 0.9014
angular: 2.1588"
	rosservice call /turtle1/teleport_relative "linear: 0.0
angular: -0.5880"
	rosservice call /turtle1/set_pen 0 0 0 3 0
}

function two() {
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.7854, 0.0, 0.0]' '[0.0, 0.0, -3.1416]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -0.5880]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.9014, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 2.1588]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
	rosservice call /turtle1/set_pen 0 0 0 3 1
	rosservice call /turtle1/teleport_relative "linear: 0.9014
angular: 2.1588"
	rosservice call /turtle1/teleport_relative "linear: 0.0
angular: -0.5880"
	rosservice call /turtle1/set_pen 0 0 0 3 0
}

function three(){
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.1781, 0.0, 0.0]' '[0.0, 0.0, -4.7124]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 3.1416]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.1781, 0.0, 0.0]' '[0.0, 0.0, -4.7124]'
	rosservice call /turtle1/set_pen 0 0 0 3 1
	rosservice call /turtle1/teleport_relative "linear: 0.5
angular: 0.0"
	rosservice call /turtle1/set_pen 0 0 0 3 0
}

function four(){
	rosservice call /turtle1/set_pen 0 0 0 3 1
	rosservice call /turtle1/teleport_relative "linear: 0.2795
angular: -0.4637"
	rosservice call /turtle1/teleport_relative "linear: 0.0
angular: -2.9229"
	rosservice call /turtle1/set_pen 0 0 0 3 0
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.5154, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.8158]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.5708]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.25, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 3.1416]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.75, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
	rosservice call /turtle1/set_pen 0 0 0 3 1
	rosservice call /turtle1/teleport_relative "linear: 0.9014
angular: -2.5536"
	rosservice call /turtle1/teleport_relative "linear: 0.0
angular: -0.5880"
	rosservice call /turtle1/set_pen 0 0 0 3 0
}

function six() {
	rosservice call /turtle1/set_pen 0 0 0 3 1
	rosservice call /turtle1/teleport_relative "linear: 0.5590
angular: -1.1071"
	rosservice call /turtle1/teleport_relative "linear: 0.0
angular: 2.6779"
	rosservice call /turtle1/set_pen 0 0 0 3 0
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.7854, 0.0, 0.0]' '[0.0, 0.0, 1.5708]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.25, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.5708, 0.0, 0.0]' '[0.0, 0.0, 6.2832]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 3.1416]'	
	rosservice call /turtle1/set_pen 0 0 0 3 1
	rosservice call /turtle1/teleport_relative "linear: 0.5
angular: 0.0"
	rosservice call /turtle1/set_pen 0 0 0 3 0
}

function nine() {
	rosservice call /turtle1/set_pen 0 0 0 3 1
	rosservice call /turtle1/teleport_relative "linear: 0.75
angular: 3.1416"
	rosservice call /turtle1/teleport_relative "linear: 0.0
angular: 1.5708"
	rosservice call /turtle1/set_pen 0 0 0 3 0
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.7854, 0.0, 0.0]' '[0.0, 0.0, 1.5708]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.25, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
	rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.5708, 0.0, 0.0]' '[0.0, 0.0, 6.2832]'
	rosservice call /turtle1/set_pen 0 0 0 3 1
	rosservice call /turtle1/teleport_relative "linear: 0.5
angular: 1.5708"
	rosservice call /turtle1/teleport_relative "linear: 0.0
angular: -1.5708"
	rosservice call /turtle1/set_pen 0 0 0 3 0
	
}


two
teleport
four
teleport
three
teleport
nine
teleport
six
teleport
one
teleport

