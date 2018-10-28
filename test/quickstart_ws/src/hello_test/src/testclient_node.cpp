/*
 * testclient_node.cpp
 *
 *  Created on: Oct 8, 2017
 *      Author: kevin
 */
#include <ros/ros.h>
#include <hello_test/LocalizePart.h>

class ScanNPlan
{
public:
  ScanNPlan(ros::NodeHandle& nh)
  {
    vision_client_ = nh.serviceClient<hello_test::LocalizePart>("localize_part");
  }

  void start()
  {
    ROS_INFO("Attempting to localizer part");
    //Localize the part
    hello_test::LocalizePart srv;
    for(int i=0; i<100; i++)
    {
      if (!vision_client_.call(srv))
      {
        ROS_ERROR("Could not localize part");
        return;
      }
      ROS_INFO_STREAM("part localized: " << srv.response);
    }
  }

private:
  // Planning components
  ros::ServiceClient vision_client_;


};
int main(int argc, char **argv)
{
  ros::init(argc, argv, "test_client_node");
  ros::NodeHandle nh;

  ScanNPlan app(nh);

  ros::Duration(.5).sleep();  //wait for the class to initialize
  app.start();

  ROS_INFO("SCANNPLAN node has been initialized");

  ros::spin();

 }



