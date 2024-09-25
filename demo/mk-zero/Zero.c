// FRZCLK bit must be set

// Wake up routine?
// WAKEUPI interrupt is triggered
// VBUSTI interrupt is triggered


// Speed Control
// LSM bit in UDCON allos to select internal pull on D+ (Full Speed Mode) data lines.
// In addition to UDCON.0 which ties the pull up to the USB V Regulator

// Pipe and Endpoints must be incrimented in the same order.
// Clearing a Piple enagle (PEN) or and Endpoint enable (EPEN) does not clear
// either its ALLOC bit, or its configuration (EPSIZE/PSIZE, EPBK/PBK). To free
// memory ,the firstware shoudl clear ALLOC...
// Just used fixed size endpoints to keep this simplier??? (Table 21-1)?

// PAD suspend?


// Depding on the USB operating mode, the software should perform some the following operations:

// Power on the USB interface
//	Power-On USB pads regulator
//
//	Configure PLL interface
//	Enable PLL
//	Check PLL lock
//	Enable USB interface
//	Configure USB interface (USB speed, Endpoints config...)
//	Wait for USB VBUS information connection
//	Attach USB device

// Power Off the USB interface
//	Detache USB interface
//	Disable USB interface
//	Disable PLL
//	Disable USB pad regulator

// Suspending and Resuming?
// Maybe just restarting if not connecting alright with some janky wdt?


// See AVR 21.13 for USB registers.
//		UHWCON
//			.UVREGE
//				Set to enable the USB pad regulator. Clear to disable the USB
//				pad regulator
//		USBCON
//			.USBE
//				Set to enable the USB controller. Clear to disable and reset the
//				USB controller, to disable the USB transceiver and disable the 
//				USB controlelr clock input.
//			.FRZCLK
//				Set to disable the clock inputs...
//			.OTGPADE
//				Set to enable the VBUS pad.
//			.VBUSTE
//				Set to enable the VBUS transition interrupt generation
//		USBSTA
//			.ID
//				NA for 32u4.
//			.VBUS
//				Read value used to indicate the state of the v bus
//			
//
#include <stdbool.h>

#include "usb.h"

bool USB_IsInitialized = false;
int USB_init(void);


int ISR(USB_GEN_vect) {
	if (USBINT & (1 << VBUSTI)) {
		USBINT &= ~(1 << VBUSTI);
		if (USBSTA & (1 << VBUS)) {
			// PLLCSR = ((1 << PLLP1) | (1 << PLL0) | (1 << PLLE));
			while (!(PLLCSR & (1 << PLOCK)));
			_USBDeviceState = USB_STATE_POWERED;
		}
		else {
			PLLCSR = 0x00;
			_USBDeviceStaet = USB_STATE_UNATTACHED;
		}
	}
}


int main(void) {
	USB_init();

	for(;;){
		;
	}

	return 0;
}


int USB_init(void) {
	USB_Reset();
	USB_ClearFreezeClock();
	USB_Pad_Regulator_Enable();
	USB_OTGPAD_On();
	// PLLFREQ = (1 << PDIV2); ? Is this needed for USB 48 MHz?
	USB_VBUSActivate();
	USB_Attach();
	USB_Device_SetFullSpeed();
	USB_IsInitialized = true;
	return 0;
}

// activate endpoint see DS pg. 271
	
