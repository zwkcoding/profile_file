/**
**  Simple ROS Node
**/
#include <ros/ros.h>
#include <fake_ar_publisher/ARMarker.h>
#include <hello_test/LocalizePart.h>
class Localizer
{
public:
  Localizer(ros::NodeHandle& nh)
  {
    ar_sub_ = nh.subscribe<fake_ar_publisher::ARMarker>("ar_pose_marker", 1, 
    &Localizer::helloCallback,this);

    server_ = nh.advertiseService("localize_part",&Localizer::localizePart,this);
  }

  void helloCallback(const fake_ar_publisher::ARMarkerConstPtr& msg)
  {
    last_msg_ = msg;
    //ROS_INFO_STREAM(last_msg_ ->pose.pose);
  }

  bool localizePart(hello_test::LocalizePart::Request& req,
                    hello_test::LocalizePart::Response& res)
  {
    fake_ar_publisher::ARMarkerConstPtr p = last_msg_;
    if (!p) return false;

    res.pose = p->pose.pose;
    return true;
  }

  ros::Subscriber ar_sub_;
  fake_ar_publisher::ARMarkerConstPtr last_msg_;
  
  ros::ServiceServer server_;
};

int main(int argc, char* argv[])
{
  // This must be called before anything else ROS-related
  ros::init(argc, argv, "hello_test_node");

  // Create a ROS node handle
  ros::NodeHandle nh;

  Localizer localizer(nh); 
  ROS_INFO("hello_test node starting");

  // Don't exit the program.
  ros::spin();
}
