#include <inttypes.h>
#include <avr/interrupt.h>
#include <avr/io.h>


ISR(TIMER1_OVF_vect) // attach Interrupt Sub Routine to TIMER1
{
	// toggle LED
	PIND = (1 << PIND5);
}


void sleep_enable(){
	SMCR |= 0x1;
}


void sleep() {
	asm("sleep");
}


void nop() {
	asm("nop");
}


int main(void)
{
	sei(); // enable interrupts

	// setup Timer1 for ISR
	TCCR1A = 0;
	TCCR1B = (1 << CS12);
	TIMSK1 = (1 << TOIE1);
	
	DDRD = (1 << DDD5); // set PORTD pin 5 to output
	DDRB = (1 << DDB0); // set PORTB pin 0 to output


	sleep_enable();
	
	for (;;) { // sleep forever
		sleep();
	}

	return 0;
}

