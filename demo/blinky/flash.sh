#!/bin/bash
# -n for no write!
avrdude -n -C /etc/avrdude.conf -v -p atmega32u4 -c flip1 -U flash:w:main.hex
# avrdude -F -C /etc/avrdude.conf -v -p atmega32u4 -c flip1 -U flash:w:main.hex
