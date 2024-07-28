#!/bin/bash
avrdude -v -p m32u4 -P /dev/ttyACM0 -c avr109 -U flash:w:Keyboard.hex
# avrdude -v -p m32u4 -P /dev/ttyACM0 -c avr109 -U flash:w:LEDTest.hex
