#define BUTTONS_BUTTON1 (1 << 1)

#define BUTTONS_ALL (BUTTONS_BUTTON1)

static inline void Buttons_Init(void)
{
	DDRD &= ~BUTTONS_BUTTON1;
	PORTD |= BUTTONS_BUTTON1;
}

static inline void Buttons_Disable(void)
{
	DDRD &= ~BUTTONS_BUTTON1;
	PORTD &= ~BUTTONS_BUTTON1;
}

static inline uint8_t Buttons_GetStatus(void)
{
	return ((PIND & BUTTONS_ALL) ^ BUTTONS_ALL);
}

