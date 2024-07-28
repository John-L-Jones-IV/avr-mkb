SRC = iotest
CC = avr-gcc
MCU = atmega32u4
CFLAGS = -g0 -Os -v -Wall -Wpedantic -Werror

$(SRC).hex: $(SRC).out
	avr-objcopy -v -g -O ihex -j .text -j .data $(SRC).out $(SRC).hex

$(SRC).out: $(SRC).c
	$(CC) $(CFLAGS) -mmcu=$(MCU) $(SRC).c -o $(SRC).out

.PHONY: clean
clean:
	-rm $(SRC).hex $(SRC).out

