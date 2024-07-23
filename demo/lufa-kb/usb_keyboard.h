// File: usb_keyboard.h

#ifndef USB_KEYBOARD_H_
#define USB_KEYBOARD_H_

#include <avr/io.h>
#include <avr/interrupt.h>
#include "LUFA/Drivers/USB/USB.h"

void usb_init(void);
void usb_keybaord_press(uint8_t key, uint8_t modifier);
void usb_keyboaard_release(uint8_t key, uint8_t modifier);
void usb_keyboard_send(void);

#endif // USB_KEYBOARD_H_

