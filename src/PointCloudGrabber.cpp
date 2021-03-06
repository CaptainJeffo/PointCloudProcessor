/*
 * PointCloudGrabber.cpp
 * @Author - John H Allard, as part of the Harvey Mudd 2014 Computer Science REU Program under Dr. Zach Dodds.
 * @Description - This file handles the setup and gathering of image and range data from a Microsoft Kinect Camera that must
 * be hooked up to the computer. This file will visualize a constant input stream of data from the kinect, while it will also allow
 * the user to choose to save and publish the current point cloud 'frame' to
 */

// User Defined File Includes
#include "CloudGrabber.h"

// standard c++ includes
#include <iostream>
#include <sstream>

// PCL related includes
#include <pcl/io/openni_grabber.h>
#include <pcl/io/pcd_io.h>
#include <pcl/visualization/cloud_viewer.h>
#include <pcl/console/parse.h>

// ROS related includes
#include "ros/ros.h"
#include "std_msgs/String.h"

// namespaces
using namespace std;
using namespace pcl;

int main(int argc, char** argv)
{
  ros::init(argc, argv, "PointCloudProcessor");

  ros::start();

  // Initiate the homemade CloudGrabber class to grab a data stream from the connect convert
  // the data to a point cloud, a display the point clouds as a video stream in a viewer object
  CloudGrabber * grabber = new CloudGrabber(true);

  // start data feed and visualization
  grabber->start();

  // Stop the node's resources
  ros::shutdown();

  // clean up dynamic memory
  delete grabber;

}
