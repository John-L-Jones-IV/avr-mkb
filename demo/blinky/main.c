#include <inttypes.h>
#include <avr/interrupt.h>
#include <avr/io.h>


// Defined in /usr/lib/avr/include/avr/io.h -> ./iom32u4.h
// #define PIND (*(volatile uint8_t* 0x29))
// #define PIND5 5
// #define DDRD (*(volatile uint8_t* 0x2A))
// #define DDD5 5
// #define PORTD (*(volatile uint8_t* 0x2B))
// #define PORTD5 5
// #define TCCR1A _SFR_MEM8(0x80) // 0xA0?
// #define TCCR1B _SFR_MEM8(0x81) // 0xA1?
// #define CS12 2
// #define TIMSK1 _SFR_MEM8(0x6F) // 0x8F?
// #define TOIE1 0


ISR(TIMER1_OVF_vect) // attach Interrupt Sub Routine to TIMER1
{
	// toggle LED
	PIND = (1 << PIND5);
}


int main(void)
{
	sei(); // enable interrupts

	// setup Timer1
	TCCR1A = 0;
	TCCR1B = (1 << CS12);
	TIMSK1 = (1 << TOIE1);
	
	DDRD = (1 << DDD5); // set PORTD pin 5 to output

	// forever loop
	for (;;){ 
		asm("nop");
	}
}

