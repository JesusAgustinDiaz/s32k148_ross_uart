
#include "String.h"
#include "S32K148.h"
#include "ros.h"
// Include C headers (ie, non C++ headers) in this block
extern "C"
{
 // #include <util/delay.h>
}

// Needed for AVR to use virtual functions
extern "C" void __cxa_pure_virtual(void);
void __cxa_pure_virtual(void) {}

ros::NodeHandle nh;

std_msgs::String str_msg;
ros::Publisher chatter("chatter", &str_msg);

char hello[13] = "hello world!";

int main()
{
  uint32_t lasttime = 0UL;
  // Initialize ROS
  nh.initNode();
  nh.advertise(chatter);

  while(1)
  {
    // Send the message every second
    if(s32k148_time_now() - lasttime > 1000)
    {
      str_msg.data = hello;
      chatter.publish(&str_msg);
      lasttime = s32k148_time_now();
    }
    nh.spinOnce();
  }

  return 0;
}
