;  ASM code generated by mikroVirtualMachine for PIC - V. 7.0.0.3
;  Date/Time: 29/05/2017 08:32:11
;  Info: http://www.mikroelektronika.co.yu


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$EF04	F000			GOTO	_main
$0008	$	_main:
;push.c,1 :: 			void main(){
;push.c,2 :: 			trisb.rb1 = 1;
$0008	$8293	    			BSF	TRISB, 1, 0
;push.c,3 :: 			trisb.rb5 = 0;
$000A	$9A93	    			BCF	TRISB, 5, 0
;push.c,4 :: 			trisb.rb6 = 0;
$000C	$9C93	    			BCF	TRISB, 6, 0
;push.c,6 :: 			while (1) {
$000E	$	L_main_0:
;push.c,7 :: 			if(portb.rb1 == 0) {
$000E	$6A01	    			CLRF	STACK_1, 0
$0010	$B281	    			BTFSC	PORTB, 1, 0
$0012	$2A01	    			INCF	STACK_1, 1, 0
$0014	$5001	    			MOVF	STACK_1, 0, 0
$0016	$0A00	    			XORLW	0
$0018	$E10B	    			BNZ	L_main_2
;push.c,8 :: 			portb.rb5 = portb.rb6 = 1;
$001A	$8C81	    			BSF	PORTB, 6, 0
$001C	$6A01	    			CLRF	STACK_1, 0
$001E	$BC81	    			BTFSC	PORTB, 6, 0
$0020	$2A01	    			INCF	STACK_1, 1, 0
$0022	$0E00	    			MOVLW	0
$0024	$B001	    			BTFSC	STACK_1, 0, 0
$0026	$0E20	    			MOVLW	32
$0028	$1881	    			XORWF	PORTB, 0, 0
$002A	$0B20	    			ANDLW	32
$002C	$1A81	    			XORWF	PORTB, 1, 0
;push.c,9 :: 			} else {
$002E	$D00A	    			BRA	L_main_3
$0030	$	L_main_2:
;push.c,10 :: 			portb.rb5 = portb.rb6 = 0;
$0030	$9C81	    			BCF	PORTB, 6, 0
$0032	$6A01	    			CLRF	STACK_1, 0
$0034	$BC81	    			BTFSC	PORTB, 6, 0
$0036	$2A01	    			INCF	STACK_1, 1, 0
$0038	$0E00	    			MOVLW	0
$003A	$B001	    			BTFSC	STACK_1, 0, 0
$003C	$0E20	    			MOVLW	32
$003E	$1881	    			XORWF	PORTB, 0, 0
$0040	$0B20	    			ANDLW	32
$0042	$1A81	    			XORWF	PORTB, 1, 0
;push.c,11 :: 			}
$0044	$	L_main_3:
;push.c,12 :: 			}
$0044	$D7E4	    			BRA	L_main_0
;push.c,13 :: 			}
$0046	$D7FF	    			BRA	$
