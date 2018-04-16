
#include "String.h"
#include "S32K148.h"
#include "ros.h"
// Include C headers (ie, non C++ headers) in this block
extern "C" {
	#include "clocks_and_modes.h"
}

// Needed for AVR to use virtual functions
extern "C" void __cxa_pure_virtual(void);
void __cxa_pure_virtual(void) {}


void init_led(void){
	PCC->PCCn[PCC_PORTE_INDEX] = PCC_PCCn_CGC(1);
	PORTE->PCR[22] = PORT_PCR_MUX(0b001);	//Port E23: MUX = GPIO
	PTE->PDDR |= 0b1<<22;					//PortE 21-23: Data direction = output
}

void led_on(void) {
	PTE->PSOR |= 1<<22;
}

void led_off(void) {
    PTE->PTOR |= 1<<22;
}


int main() {

  ros::NodeHandle nh;
  std_msgs::String str_msg;
  ros::Publisher chatter("chatter", &str_msg);
  char hello[2] = "h";

  SOSC_init_8MHz();       /* Initialize system oscilator for 8 MHz xtal */
  SPLL_init_160MHz();     /* Initialize SPLL to 160 MHz with 8 MHz SOSC */
  NormalRUNmode_80MHz();  /* Init clocks: 80 MHz sysclk & core, 40 MHz bus, 20 MHz flash */

  init_led();

  uint32_t lasttime = 0UL;

  // Initialize ROS
  nh.initNode();
  nh.advertise(chatter);

  while(1) {
    if(s32k148_time_now() - lasttime > 10) {
      str_msg.data = hello;
      lasttime = s32k148_time_now();
      chatter.publish(&str_msg);
    }
    nh.spinOnce();
  }
  return 0;
}
