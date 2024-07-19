	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C11 (GCC) version 5.4.0 (avr)
 ; 	compiled by GNU C version 9.3.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0
 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed:  -imultilib avr5 -D__AVR_ATmega32U4__
 ;  -D__AVR_DEVICE_NAME__=atmega32u4 main.c -mn-flash=1 -mno-skip-bug
 ;  -mmcu=avr5 -Wall -Wpedantic -Werror -fverbose-asm
 ;  options enabled:  -Wmisspelled-isr -faggressive-loop-optimizations
 ;  -fauto-inc-dec -fchkp-check-incomplete-type -fchkp-check-read
 ;  -fchkp-check-write -fchkp-instrument-calls -fchkp-narrow-bounds
 ;  -fchkp-optimize -fchkp-store-bounds -fchkp-use-static-bounds
 ;  -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcommon
 ;  -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
 ;  -ffunction-cse -fgcse-lm -fgnu-runtime -fgnu-unique -fident
 ;  -finline-atomics -fira-hoist-pressure -fira-share-save-slots
 ;  -fira-share-spill-slots -fivopts -fkeep-static-consts
 ;  -fleading-underscore -flifetime-dse -flto-odr-type-merging -fmath-errno
 ;  -fmerge-debug-strings -fpeephole -fprefetch-loop-arrays
 ;  -freg-struct-return -fsched-critical-path-heuristic
 ;  -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
 ;  -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
 ;  -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
 ;  -fsemantic-interposition -fshow-column -fsigned-zeros
 ;  -fsplit-ivs-in-unroller -fstdarg-opt -fstrict-volatile-bitfields
 ;  -fsync-libcalls -ftrapping-math -ftree-coalesce-vars -ftree-forwprop
 ;  -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
 ;  -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
 ;  -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -fverbose-asm
 ;  -fzero-initialized-in-bss

	.text
.global	__vector_20
	.type	__vector_20, @function
__vector_20:
	push r1	 ; 
	push r0	 ; 
	lds r0,95	 ; ,
	push r0	 ; 
	clr __zero_reg__	 ; 
	push r18	 ; 
	push r24	 ; 
	push r25	 ; 
	push r30	 ; 
	push r31	 ; 
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	ldi r24,lo8(41)	 ;  D.1620,
	ldi r25,0	 ;  D.1620
	ldi r18,lo8(32)	 ;  tmp43,
	movw r30,r24	 ; , D.1620
	st Z,r18	 ;  *_1, tmp43
	nop
/* epilogue start */
	pop r29	 ; 
	pop r28	 ; 
	pop r31	 ; 
	pop r30	 ; 
	pop r25	 ; 
	pop r24	 ; 
	pop r18	 ; 
	pop r0	 ; 
	sts 95,r0	 ; ,
	pop r0	 ; 
	pop r1	 ; 
	reti
	.size	__vector_20, .-__vector_20
.global	main
	.type	main, @function
main:
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
/* #APP */
 ;  29 "main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(-128)	 ;  D.1621,
	ldi r25,0	 ;  D.1621
	movw r30,r24	 ; , D.1621
	st Z,__zero_reg__	 ;  *_3,
	ldi r24,lo8(-127)	 ;  D.1621,
	ldi r25,0	 ;  D.1621
	ldi r18,lo8(4)	 ;  tmp47,
	movw r30,r24	 ; , D.1621
	st Z,r18	 ;  *_5, tmp47
	ldi r24,lo8(111)	 ;  D.1621,
	ldi r25,0	 ;  D.1621
	ldi r18,lo8(1)	 ;  tmp48,
	movw r30,r24	 ; , D.1621
	st Z,r18	 ;  *_7, tmp48
	ldi r24,lo8(42)	 ;  D.1621,
	ldi r25,0	 ;  D.1621
	ldi r18,lo8(32)	 ;  tmp49,
	movw r30,r24	 ; , D.1621
	st Z,r18	 ;  *_9, tmp49
.L3:
/* #APP */
 ;  40 "main.c" 1
	nop
 ;  0 "" 2
/* #NOAPP */
	rjmp .L3	 ; 
	.size	main, .-main
	.ident	"GCC: (GNU) 5.4.0"
