#include "S32K148.h"
#include "s32k148_uart.h"

#include "../drivers/lpuart.h"

#define BAUD 57600
#define UBRR_VAL ((F_CPU / (16UL * BAUD)) - 1)


// Initialize the UART
void s32k148_uart_init(void)
{
	PCC->PCCn[PCC_PORTC_INDEX] = PCC_PCCn_CGC(1);
	PORTC->PCR[6]|=PORT_PCR_MUX(2);           /* Port C6: MUX = ALT2,UART1 RX */
	PORTC->PCR[7]|=PORT_PCR_MUX(2);           /* Port C7: MUX = ALT2,UART1 TX */
	LPUART_Init(PCC_LPUART1_INDEX, LPUART1); // (ip_index, base)
}


// Send one char (blocking)
void s32k148_uart_send_byte(uint8_t tx_byte)
{
	LPUART_Send(LPUART1, tx_byte);
}


// Get one char if available, otherwise -1
int16_t s32k148_uart_receive_byte(void)
{
	//int16_t l = LPUART_Receive();
	//uint16_t k = l;
	//int8_t n = ((k >> 0) & 0xff);
	return LPUART_Receive();
}
