#ifndef _S32K148_HARDWARE_H
#define _S32K148_HARDWARE_H

extern "C"
{
  #include "s32k148_time.h"
  #include "s32k148_uart.h"
}

class s32K148Hardware {
  public:
	s32K148Hardware() {}


    // Initialize the s32K148
    void init()
    {
      //wdt_disable();
      s32k148_time_init();
      s32k148_uart_init();
      //sei();
    }

    // Read a byte of data from ROS connection.
    // If no data, returns -1
    int16_t read()
    {
      int16_t r = s32k148_uart_receive_byte();
      return r;
    }


    // Send a byte of data to ROS connection
    void write(uint8_t* data, int length)
    {
      for(int i = 0; i < length; i++)
      {
        s32k148_uart_send_byte(data[i]);
      }
    }


    // Returns milliseconds since start of program
    unsigned long time()
    {
      return s32k148_time_now();
    }
  };

#endif
