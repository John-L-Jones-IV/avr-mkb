// File: usb_keyboard.c

#include "usb_keybaord.h"
#include <string.h>

// HID report buffer
static uint8_t keyboard_report[8] = {0};

void usb_init(void) {
	USB_Init();
}

void usb_keyboard_press(uint8_t key, uint8_t modifier) {
	keyboard_report[0] = modifier;
	for (uint8_t i = 2; i < 8; ++i) {
		if (keyboard_report[i] == 0) {
			keyboard_report[i] = key; 
			break;
		}
	}
}


void usb_keyboard_send(void) {
	HID_Device_USBTask(&Keyboard_HID_Interface);
	USB_USBTask();
	HID_Device_SendReport(&Keyboard_HID_Interface, 0, keyboard_report, 
			              sizeof(keyboard_report));
	memset(keyboard_report + 2, 0, 6); // clear keys, not modifers
}

void EVENT_USB_Device_ConfigurationChanged(void) {
	bool ConfigSuccess = true;
	ConfigSuccess &= HID_Device_ConfigureEndpoints(&Keyboard_HID_Interface);
	USB_Device_EnableSOFEvent();
}

const USB_Descriptor_HIDReport_Datatype_t PROGMEM KeyboardReport[] = {
	HID_RI_USAGE_PAGE(8, 0x01);
	HID_RI_USAGE(8, 0x06);
	HID_RI_COLLECTION(8, 0x01);
	HID_RI_USAGE_PAGE
