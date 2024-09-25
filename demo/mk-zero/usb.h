/* usb.h
 *
 * See ATmega32U4 datasheet for more information regarding the USB Controller.
 * Atmel-7766J-USB-ATmega16U4/32U4-Datasheet_04/2016
 * 
 * https://kampi.gitbook.io/avr/lets-use-usb/initialize-the-usb-as-a-usb-device
 *
 */
#pragma once


#include <avr/io.h>


#define ATTR_ALWAYS_INLINE __attribute__ ((always_inline))


static inline void USB_Reset(void) ATTR_ALWAYS_INLINE;
static inline void USB_Reset(void) {
	USBCON &= ~(1 << USBE);
	USBCON |= (1 << USBE);
}


static inline void USB_ClearFreezeClock(void) ATTR_ALWAYS_INLINE;
static inline void USB_ClearFreezeClock(void) {
	USBCON &= ~(1 << FRZCLK);
}


static inline void USB_OTGPAD_On(void) ATTR_ALWAYS_INLINE;
static inline void USB_OTGPAD_On(void) {
	USBCON |= (1 << OTGPADE);
}


static inline void USB_OTGPAD_Off(void) ATTR_ALWAYS_INLINE;
static inline void USB_OTGPAD_Off(void) {
	/* Work around for AVR stolen from LUFA */
	/* From Atmega32U4 datasheet: Set to enable the VBUS pad. Clear to 
	 * diable the VBUS pad. */
	USBCON &= ~(1 << OTGPADE);
}


static inline void USB_VBUSActivate(void) ATTR_ALWAYS_INLINE;
static inline void USB_VBUSActivate(void) {
	USBCON |= (1 << VBUSTE);
}


static inline void USB_Device_SetFullSpeed(void) ATTR_ALWAYS_INLINE;
static inline void USB_Device_SetFullSpeed(void) {
	UDCON &= ~(1 << LSM);
}


static inline void USB_Device_SetLowSpeed(void) ATTR_ALWAYS_INLINE;
static inline void USB_Device_SetLowSpeed(void) {
	UDCON |= (1 << LSM);
}


static inline void USB_Pad_Regulator_Enable(void) ATTR_ALWAYS_INLINE;
static inline void USB_Pad_Regulator_Enable(void) {
	UHWCON |= (1 << UVREGE);
}


static inline void USB_Attach(void) ATTR_ALWAYS_INLINE;
static inline void USB_Attach(void) {
	UDCON &= ~(1 << DETACH);
}


static inline void USB_Device_SetDeviceAddress(const uint8_t Address) ATTR_ALWAYS_INLINE;
static inline void USB_Device_SetDeviceAddress(const uint8_t Address) {
	UDADDR = (UDADDR & (1 << ADDEN)) | (Address & 0x7F);
}


static inline bool USB_Device_IsAddressSet(void) ATTR_ALWAYS_INLINE;
static inline bool USB_Device_IsAddressSet(void) {
	return (UDADDR & (1 << ADDEN));
}


