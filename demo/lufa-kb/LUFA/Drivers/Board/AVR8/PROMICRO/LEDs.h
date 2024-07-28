#define LEDS_LED1 (1 << 0) // B
#define LEDS_LED2 (1 << 5) // D
#define LEDS_LED3 (1 << 6) // B

#define LEDS_PORTD LEDS_LED2
#define LEDS_PORTB (LEDS_LED1 | LEDS_LED3)

#define LEDS_ALL_LEDS (LEDS_LED1 | LEDS_LED2 | LEDS_LED3)


static inline void LEDs_Init(void)
{
	// initalize LED port pins as outputs here
	DDRB |= LEDS_PORTB;
	DDRD |= LEDS_PORTD;

	// initalize to off by driving high
	PORTB |= LEDS_PORTB;
	PORTD |= LEDS_PORTD;
}

static inline void LEDs_Disable(void)
{
	// Clear the LED port pins as high impedance inputs here
	DDRB &= ~LEDS_PORTB;
	DDRD &= ~LEDS_PORTD;
	PORTB &= ~LEDS_PORTB;
	PORTD &= ~LEDS_PORTD;
}

static inline void LEDs_TurnOnLEDs(const uint8_t LEDMask)
{
	// turn on LEDs given in the LEDMask mask here, leave others as-is
	PORTB &= ~(LEDMask & LEDS_PORTB);
	PORTD &= ~(LEDMask & LEDS_PORTD);
}


static inline void LEDs_TurnOffLEDs(const uint8_t LEDMask)
{
	// turn on LEDs given in the LEDMask mask here, leave others as-is
	PORTB |= (LEDMask & LEDS_PORTB);
	PORTD |= (LEDMask & LEDS_PORTD);
}

static inline void LEDs_SetAllLEDs(const uint8_t LEDMask)
{
	// turn on only LEDs given in the LED mask here, all other off
	PORTB = ((PORTB | LEDS_PORTB) & ~LEDMask);
	PORTD = ((PORTD | LEDS_PORTD) & ~LEDMask);
}

static inline void LEDs_ToggleLEDs(const uint8_t LEDMask)
{
	// toggle the Leds in the given LEDMask, ignoring all others
	PINB = LEDMask & LEDS_PORTB;
	PIND = LEDMask & LEDS_PORTD;
}

static inline uint8_t LEDs_GetLEDs(void)
{
	// return the current LEDs status' here which can be masked against LED_LED* macros
	return ((PORTB & LEDS_PORTB) | (PORTD & LEDS_PORTD));
}

