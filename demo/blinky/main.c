#include <inttypes.h>
#include <avr/interrupt.h>
#include <avr/io.h>

// #define PIND (*(volatile uint8_t* 0x29))
// #define DDRD (*(volatile uint8_t* 0x2A))
// #define PORTD (*(volatile uint8_t* 0x2B))


ISR(TIMER1_OVF_vect)
{
	// toggle LED
	PORTD ^= (1 << PD5);
	// PIND = (1 << PIND5);
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
	}
}
