#ifndef __BOARD_PROMICRO_H__
#define __BOARD_PROMICRO_H__

	/* Includes: */
		#include "../../../../Common/Common.h"
		#include "../../LEDs.h"

	/* Enable C linkage for C++ Compilers: */
		#if defined(__cplusplus)
			extern "C" {
		#endif

	/* Preprocessor Checks: */
		#if !defined(__INCLUDE_FROM_BOARD_H)
			#error Do not include this file directly. Include LUFA/Drivers/Board/Board.h instead.
		#endif

	/* Public Interface - May be used in end-application: */
		/* Macros: */
			/** Indicates the board has hardware LEDs mounted. */
			#define BOARD_HAS_LEDS

	/* Disable C linkage for C++ Compilers: */
		#if defined(__cplusplus)
			}
		#endif

#endif
