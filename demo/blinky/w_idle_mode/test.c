#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>


// #define SMCR 
#define SE 0
#define SM0 1
#define SM1 2
#define SM2 3


int main(void) {
	uint8_t* SMCR = malloc(1*sizeof(uint8_t));
	*SMCR = 0x7F;
	*SMCR &= ~((1 << SM0) | (1 << SM1) | (1 << SM2));
	printf("%X\n", *SMCR);

	return 0;
}
