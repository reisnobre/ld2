;  ASM code generated by mikroVirtualMachine for PIC - V. 7.0.0.3
;  Date/Time: 22/05/2017 10:00:00
;  Info: http://www.mikroelektronika.co.yu


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$EF04	F000			GOTO	_main
$0008	$	_main:
;Push.c,1 :: 			void main(){
;Push.c,2 :: 			trisd = 0;
$0008	$6A95	    			CLRF	TRISD, 0
;Push.c,3 :: 			portd = 0;
$000A	$6A83	    			CLRF	PORTD, 0
;Push.c,5 :: 			while(1){
$000C	$	L_main_0:
;Push.c,6 :: 			portd = 255;
$000C	$0EFF	    			MOVLW	255
$000E	$6E83	    			MOVWF	PORTD, 0
;Push.c,7 :: 			delay_ms(1000);
$0010	$0E0B	    			MOVLW	11
$0012	$6E0C	    			MOVWF	STACK_12, 0
$0014	$0EFF	    			MOVLW	255
$0016	$6E0B	    			MOVWF	STACK_11, 0
$0018	$0EFF	    			MOVLW	255
$001A	$6E0A	    			MOVWF	STACK_10, 0
$001C	$2E0C	    			DECFSZ	STACK_12, F, 0
$001E	$D001	    			BRA	$+2
$0020	$D007	    			BRA	$+8
$0022	$2E0B	    			DECFSZ	STACK_11, F, 0
$0024	$D001	    			BRA	$+2
$0026	$D003	    			BRA	$+4
$0028	$2E0A	    			DECFSZ	STACK_10, F, 0
$002A	$D7FE	    			BRA	$-1
$002C	$D7FA	    			BRA	$-5
$002E	$D7F6	    			BRA	$-9
$0030	$0E33	    			MOVLW	51
$0032	$6E0B	    			MOVWF	STACK_11, 0
$0034	$0EFF	    			MOVLW	255
$0036	$6E0A	    			MOVWF	STACK_10, 0
$0038	$2E0B	    			DECFSZ	STACK_11, F, 0
$003A	$D001	    			BRA	$+2
$003C	$D003	    			BRA	$+4
$003E	$2E0A	    			DECFSZ	STACK_10, F, 0
$0040	$D7FE	    			BRA	$-1
$0042	$D7FA	    			BRA	$-5
$0044	$0E88	    			MOVLW	136
$0046	$6E0A	    			MOVWF	STACK_10, 0
$0048	$2E0A	    			DECFSZ	STACK_10, F, 0
$004A	$D7FE	    			BRA	$-1
$004C	$0000	    			NOP
$004E	$0000	    			NOP
;Push.c,8 :: 			portd = 0;
$0050	$6A83	    			CLRF	PORTD, 0
;Push.c,9 :: 			delay_ms(1000);
$0052	$0E0B	    			MOVLW	11
$0054	$6E0C	    			MOVWF	STACK_12, 0
$0056	$0EFF	    			MOVLW	255
$0058	$6E0B	    			MOVWF	STACK_11, 0
$005A	$0EFF	    			MOVLW	255
$005C	$6E0A	    			MOVWF	STACK_10, 0
$005E	$2E0C	    			DECFSZ	STACK_12, F, 0
$0060	$D001	    			BRA	$+2
$0062	$D007	    			BRA	$+8
$0064	$2E0B	    			DECFSZ	STACK_11, F, 0
$0066	$D001	    			BRA	$+2
$0068	$D003	    			BRA	$+4
$006A	$2E0A	    			DECFSZ	STACK_10, F, 0
$006C	$D7FE	    			BRA	$-1
$006E	$D7FA	    			BRA	$-5
$0070	$D7F6	    			BRA	$-9
$0072	$0E33	    			MOVLW	51
$0074	$6E0B	    			MOVWF	STACK_11, 0
$0076	$0EFF	    			MOVLW	255
$0078	$6E0A	    			MOVWF	STACK_10, 0
$007A	$2E0B	    			DECFSZ	STACK_11, F, 0
$007C	$D001	    			BRA	$+2
$007E	$D003	    			BRA	$+4
$0080	$2E0A	    			DECFSZ	STACK_10, F, 0
$0082	$D7FE	    			BRA	$-1
$0084	$D7FA	    			BRA	$-5
$0086	$0E88	    			MOVLW	136
$0088	$6E0A	    			MOVWF	STACK_10, 0
$008A	$2E0A	    			DECFSZ	STACK_10, F, 0
$008C	$D7FE	    			BRA	$-1
$008E	$0000	    			NOP
$0090	$0000	    			NOP
;Push.c,10 :: 			}
$0092	$D7BC	    			BRA	L_main_0
;Push.c,11 :: 			}
$0094	$D7FF	    			BRA	$
