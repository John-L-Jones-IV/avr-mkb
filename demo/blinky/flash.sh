#!/bin/bash
# avrdude -c flip1 -p m32u4 -U flash:w:main.hex -P usb -v

# flip 1 ?
# avrdude -p atmega32u4 -c flip1 -C /etc/avrdude.conf -v -U flash:w:main.hex

# avr109?
avrdude -p m32u4 -P /dev/ttyACM0 -c avr109 -C /etc/avrdude.conf -v -U flash:w:main.hex

# -n for no write!

# other things?
# avrdude -F -C /etc/avrdude.conf -v -p atmega32u4 -c flip1 -P /dev/ttyACM0 -U flash:w:main.hex
# avrdude -F -C /etc/avrdude.conf -v -p atmega32u4 -c flip1 -U flash:w:main.hex
