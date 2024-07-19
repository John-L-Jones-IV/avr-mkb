	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	__vector_20
	.type	__vector_20, @function
__vector_20: ; ISR label
/* start prologue */
	push r1
	push r0
	lds r0,95 ; 95 = 0x5F = (SREG) : CLI()
	push r0
	clr __zero_reg__
	push r18
	push r24
	push r25
	push r30
	push r31
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	ldi r24,lo8(41) ; r24 = 0x29 (addr of PIND)
	ldi r25,0
	ldi r18,lo8(32) ; r18 = 0b0010 0000 (1 << PIND5)
	movw r30,r24	; Z = [r24:r25] (addr of PIND)
	/* toggle LED */
	st Z,r18		; (*(uint16* 0x29)) = (1 << PIND5) 
	nop
/* epilogue start */
	pop r29
	pop r28
	pop r31
	pop r30
	pop r25
	pop r24
	pop r18
	pop r0
	sts 95,r0 ; RESTORE SREG
	pop r0
	pop r1
	reti ; return 
	.size	__vector_20, .-__vector_20
.global	main
	.type	main, @function
main:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
/* #APP */
 ;  19 "main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(-128) ; r24 = 0x80
	ldi r25,0
	movw r30,r24	  ; Z = [r24:25] = 0x80
	st Z,__zero_reg__ ; TCCR1A = 0
	ldi r24,lo8(-127) ; r24 = 0x81
	ldi r25,0
	ldi r18,lo8(4)	  ; r18 = 0x04 = (1 << CS12)
	movw r30,r24	  ; Z = r[24:25]
	st Z,r18		  ; TCCR1B = (1 << CS12)
	ldi r24,lo8(111)
	ldi r25,0
	ldi r18,lo8(1)
	movw r30,r24
	st Z,r18
	ldi r24,lo8(42)
	ldi r25,0
	ldi r18,lo8(32)
	movw r30,r24
	st Z,r18
.L3:
/* #APP */
 ;  30 "main.c" 1
	nop
 ;  0 "" 2
/* #NOAPP */
	rjmp .L3
	.size	main, .-main
	.ident	"GCC: (GNU) 5.4.0"
