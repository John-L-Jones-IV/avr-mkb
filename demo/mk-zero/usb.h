/* usb.h
 *
 * See ATmega32U4 datasheet for more information regarding the USB Controller.
 * Atmel-7766J-USB-ATmega16U4/32U4-Datasheet_04/2016
 */
#ifndef _USB_H_
#define _USB_H_

#include <avr/io.h>


#define ATTR_ALWAYS_INLINE __attribute__ ((always_inline))


// static inline void USB_Detach_Device(void) ATTR_ALWYAS_INLINE {
// 	UDCON |= (1 << DETACH);
// }


// static inline void USB_Connect_Device(void) ATTR_ALWAYS_INLINE;
// static inline void USB_Connect_Device(void) {
// 	UDCON &= ~(1 << DETACH);
// }
// 
// 
// static inline void USB_Device_SetFullSpeed(void) ATTR_ALWAYS_INLINE;
// static inline void USB_Device_SetFullSpeed(void) {
// 	UDCON &= ~(1 << LSM);
// }
// 
// 
// static inline void USB_Reset_CPU(void) ATTR_AWLAYS_INLINE;
// static inline void USB_Reset_CPU(void) {
// 	UDCON |= (1 << RSTCPU);
// }
// 
// 
// static inline void USB_Device_SetLowSpeed(void) ATTR_ALWAYS_INLINE;
// static inline void USB_Device_SetLowSpeed(void) {
// 	UDCON |= (1 << LSM);
// }
// 
// 
static inline void USB_Pad_Regulator_Enable(void) ATTR_ALWAYS_INLINE;
static inline void USB_Pad_Regulator_Enable(void) {
	UHWCON |= (1 << UVREGE);
}
// 
// 
// static inline void USB_Pad_Regulator_Disable(void) ATTR_ALWAYS_INLINE;
// static inline void USB_Pad_Regulator_Disable(void) {
// 	UHWCON &= ~(1 << UVREGE);
// }

#endif // _USB_H_
