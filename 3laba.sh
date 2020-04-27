#!/bin/bash
gnome-terminal --command roscore
sleep 2
gnome-terminal --command "rosrun turtlesim turtlesim_node"
sleep 2
rosservice call /kill turtle1

#2
rosservice  call /spawn 0.2 7.0 0.7 turtle1

rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, -2.8]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 2.2]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.2, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rosservice call /kill turtle1

#4
rosservice  call /spawn 2.0 7.0 0.0 turtle1

rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.57]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.57]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.57]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[-3.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rosservice call /kill turtle1 

#7
rosservice call spawn 3.8 7.0 0.0 turtle_6
rostopic pub -1 /turtle_6/cmd_vel geometry_msgs/Twist -- '[1.5, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle_6/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -2.0]'
rostopic pub -1 /turtle_6/cmd_vel geometry_msgs/Twist -- '[3, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rosservice call /kill turtle_6 

#6
rosservice call /spawn 6.9 6.2 0.79 turtle6

rostopic pub -1 /turtle6/cmd_vel geometry_msgs/Twist -- '[1.5, 0.0, 0.0]' '[0.0, 0.0, 3.14]'
rostopic pub -1 /turtle6/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 0.7]'
rostopic pub -1 /turtle6/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle6/cmd_vel geometry_msgs/Twist -- '[4.0, 0.0, 0.0]' '[0.0, 0.0, 8.6]'
rosservice call /kill turtle6 

#2
rosservice  call /spawn 7.8 7.0 0.7 turtle1

rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, -2.8]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 2.2]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1.2, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rosservice call /kill turtle1

#0
rosservice call spawn 9.3 5.0 4.712 turtle0
rostopic pub -1 /turtle0/cmd_vel geometry_msgs/Twist -- '[2.3, 0.0, 0.0]' '[0.0, 0.0, 3.14]'
rosservice call turtle0/teleport_relative 1.8 0
rostopic pub -1 /turtle0/cmd_vel geometry_msgs/Twist -- '[2.3, 0.0, 0.0]' '[0.0, 0.0, 3.14]'
rosservice call turtle0/teleport_relative 1.8 0

rosservice call /kill turtle1
