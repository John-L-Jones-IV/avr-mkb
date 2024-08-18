CC 		= avr-gcc
C_FLAGS	= -Wall -Wpedantic -Wextra # -Werror 
MCU 	= atmega32u4
MAKE_PATH= $(abspath $(lastword $(MAKEFILE_LIST)))
MAKE_DIR= $(notdir $(patsubst %/,%,$(dir $(MAKE_PATH))))
INC		= -I$(MAKE_DIR)

Zero.hex: Zero
	avr-objcopy -v -g -O ihex -j .text -j .data Zero Zero.hex

Zero: 
	$(CC) $(C_FLAGS) -mmcu=$(MCU) Zero.c -o Zero

clean:
	rm -f Zero Zero.hex

