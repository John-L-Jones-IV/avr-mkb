SRC = main
CC = avr-gcc
MCU = atmega32u4
CFLAGS = -g -Wall -Wpedantic -Werror

build:
	$(CC) $(CFLAGS) -mmcu=$(MCU) -S $(SRC).c

assembly:
	$(CC) $(CFLAGS) -mmcu=$(MCU) -S $(SRC).c

clean:
	rm $(SRC).s 

