SRC = main
CC = avr-gcc
MCU = atmega32u4
CFLAGS = -g -Wall -Wpedantic -Werror

# help:
# 	@echo 'backup       Read all known memory types from controller and write it into a file. Available memory types: $(memoryTypes)'
# 	@echo 'clean        Delete automatically created files.'
# 	@echo 'disassemble  Compile source code, then disassemble object file to mnemonics.'
# 	@echo 'dumpelf      Dump the contents of the .elf file. Useful for information purposes only.'
# 	@echo 'edit			Edit the .cpp source file.'
# 	@echo 'eeprom       Extract EEPROM data from .elf file and program the device with it.'
# 	@echo 'elf			Create $(src).elf'
# 	@echo 'flash        Program $(src).hex to controller flash memory.'
# 	@echo 'fuses        Extract FUSES data from .elf file and program the device with it.'
# 	@echo 'help			Show this text.'
# 	@echo 'hex			Create all hex files for flash, eeprom and fuses.'
# 	@echo 'object       Create $(src).o'
# 	@echo 'program      Do all programming to controller.'

$(SRC).hex: $(SRC).out
	@echo "running avr-objcopy"
	avr-objcopy -O ihex -j .text -j .data $(SRC).out $(SRC).hex

$(SRC).out: $(SRC).c
	$(CC) $(CFLAGS) -mmcu=$(MCU) $(SRC).c -o $(SRC).out

$(SRC).s: $(SRC).c
	$(CC) $(CFLAGS) -mmcu=$(MCU) -fverbose-asm -S $(SRC).c

