#include <avr/io.h>

int main(void) {
	// input
	DDRD &= ~(1 << DDD1);
	PORTD |= (1 << PORTD1);


	// outpout
	DDRB |= (1 << DDB0);
	DDRB |= (1 << DDB6);
	DDRD |= (1 << DDB5);

	while(1) {
		// if PORTD1 input is pulled low
		if (PIND & (1 << 1)) {
			// write output B6 as low
			PORTB &= ~(1 << PORTB0);
			PORTB &= ~(1 << PORTB6);
			PORTD &= ~(1 << PORTD5);
		}
		else {
			// write output B6 as high
			PORTB |= (1 << PORTB0);
			PORTB |= (1 << PORTB6);
			PORTD |= (1 << PORTD5);
		}
	}

	return 1;
}

