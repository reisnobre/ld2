;  ASM code generated by mikroVirtualMachine for PIC - V. 7.0.0.3
;  Date/Time: 29/05/2017 09:36:42
;  Info: http://www.mikroelektronika.co.yu


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$EF55	F001			GOTO	_main
$0008	$	_Delay_1us:
$0008	$0000	    			NOP
$000A	$0000	    			NOP
$000C	$0012	    			RETURN
$000E	$	_Delay_5500us:
$000E	$0E0F	    			MOVLW	15
$0010	$6E0B	    			MOVWF	STACK_11, 0
$0012	$0EFF	    			MOVLW	255
$0014	$6E0A	    			MOVWF	STACK_10, 0
$0016	$2E0B	    			DECFSZ	STACK_11, F, 0
$0018	$D001	    			BRA	$+2
$001A	$D003	    			BRA	$+4
$001C	$2E0A	    			DECFSZ	STACK_10, F, 0
$001E	$D7FE	    			BRA	$-1
$0020	$D7FA	    			BRA	$-5
$0022	$0E3E	    			MOVLW	62
$0024	$6E0A	    			MOVWF	STACK_10, 0
$0026	$2E0A	    			DECFSZ	STACK_10, F, 0
$0028	$D7FE	    			BRA	$-1
$002A	$0000	    			NOP
$002C	$0012	    			RETURN
$002E	$	_Delay_50us:
$002E	$0E21	    			MOVLW	33
$0030	$6E0A	    			MOVWF	STACK_10, 0
$0032	$2E0A	    			DECFSZ	STACK_10, F, 0
$0034	$D7FE	    			BRA	$-1
$0036	$0012	    			RETURN
$0038	$	_Lcd8_Cmd:
$0038	$C015	FFE9			MOVFF	Lcd8bit_main_global_dataAddress, FSR0L
$003C	$C016	FFEA			MOVFF	Lcd8bit_main_global_dataAddress+1, FSR0H
$0040	$C017	FFE1			MOVFF	Lcd8bit_main_global_ctrlAddress, FSR1L
$0044	$C018	FFE2			MOVFF	Lcd8bit_main_global_ctrlAddress+1, FSR1H
$0048	$6AEF	    			CLRF	INDF0, 0
$004A	$5248	    			MOVF	FARG_Lcd8_Cmd+0, 1, 0
$004C	$E000	    			BZ	L_Lcd8_Cmd_0
$004E	$	L_Lcd8_Cmd_0:
$004E	$BE48	    			BTFSC	FARG_Lcd8_Cmd+0, 7, 0
$0050	$8EEF	    			BSF	INDF0, __LCD8_DB7, 0
$0052	$BC48	    			BTFSC	FARG_Lcd8_Cmd+0, 6, 0
$0054	$8CEF	    			BSF	INDF0, __LCD8_DB6, 0
$0056	$BA48	    			BTFSC	FARG_Lcd8_Cmd+0, 5, 0
$0058	$8AEF	    			BSF	INDF0, __LCD8_DB5, 0
$005A	$B848	    			BTFSC	FARG_Lcd8_Cmd+0, 4, 0
$005C	$88EF	    			BSF	INDF0, __LCD8_DB4, 0
$005E	$B648	    			BTFSC	FARG_Lcd8_Cmd+0, 3, 0
$0060	$86EF	    			BSF	INDF0, __LCD8_DB3, 0
$0062	$B448	    			BTFSC	FARG_Lcd8_Cmd+0, 2, 0
$0064	$84EF	    			BSF	INDF0, __LCD8_DB2, 0
$0066	$B248	    			BTFSC	FARG_Lcd8_Cmd+0, 1, 0
$0068	$82EF	    			BSF	INDF0, __LCD8_DB1, 0
$006A	$B048	    			BTFSC	FARG_Lcd8_Cmd+0, 0, 0
$006C	$80EF	    			BSF	INDF0, __LCD8_DB0, 0
$006E	$5019	    			MOVF	Lcd8bit_main_global_cmd, 0, 0
$0070	$0A01	    			XORLW	1
$0072	$E103	    			BNZ	L_Lcd8_Cmd_1
$0074	$94E7	    			BCF	INDF1, __LCD8_RS, 0
$0076	$EF3E	F000			GOTO	L_Lcd8_Cmd_2
$007A	$	L_Lcd8_Cmd_1:
$007A	$84E7	    			BSF	INDF1, __LCD8_RS, 0
$007C	$	L_Lcd8_Cmd_2:
$007C	$82E7	    			BSF	INDF1, __LCD8_ENABLE, 0
$007E	$EC04	F000			CALL	_Delay_1us
$0082	$92E7	    			BCF	INDF1, __LCD8_ENABLE, 0
$0084	$5019	    			MOVF	Lcd8bit_main_global_cmd, 0, 0
$0086	$0A01	    			XORLW	1
$0088	$E103	    			BNZ	L_Lcd8_Cmd_3
$008A	$EC07	F000			CALL	_Delay_5500us
$008E	$D002	    			BRA	L_Lcd8_Cmd_4
$0090	$	L_Lcd8_Cmd_3:
$0090	$EC17	F000			CALL	_Delay_50us
$0094	$	L_Lcd8_Cmd_4:
$0094	$0012	    			RETURN
$0096	$	_Div_16x16_U:
$0096	$0100	    			MOVLB	0
$0098	$6A08	    			CLRF	STACK_8, 0
$009A	$6A09	    			CLRF	STACK_9, 0
$009C	$0E10	    			MOVLW	16
$009E	$6E0C	    			MOVWF	STACK_12, 0
$00A0	$3401	    			RLCF	STACK_1, W, 0
$00A2	$3608	    			RLCF	STACK_8, F, 0
$00A4	$3609	    			RLCF	STACK_9, F, 0
$00A6	$5004	    			MOVF	STACK_4, W, 0
$00A8	$5E08	    			SUBWF	STACK_8, F, 0
$00AA	$5005	    			MOVF	STACK_5, W, 0
$00AC	$A0D8	    			BTFSS	STATUS, C, 0
$00AE	$3C05	    			INCFSZ	STACK_5, W, 0
$00B0	$5E09	    			SUBWF	STACK_9, F, 0
$00B2	$B0D8	    			BTFSC	STATUS, C, 0
$00B4	$EF63	F000			GOTO	$+8
$00B8	$5004	    			MOVF	STACK_4, W, 0
$00BA	$2608	    			ADDWF	STACK_8, F, 0
$00BC	$5005	    			MOVF	STACK_5, W, 0
$00BE	$B0D8	    			BTFSC	STATUS, C, 0
$00C0	$3C05	    			INCFSZ	STACK_5, W, 0
$00C2	$2609	    			ADDWF	STACK_9, F, 0
$00C4	$90D8	    			BCF	STATUS, C, 0
$00C6	$3600	    			RLCF	STACK_0, F, 0
$00C8	$3601	    			RLCF	STACK_1, F, 0
$00CA	$2E0C	    			DECFSZ	STACK_12, F, 0
$00CC	$EF50	F000			GOTO	$-21
$00D0	$0012	    			RETURN
$00D2	$	_LCD8_Out:
$00D2	$D00F	    			BRA	L_LCD8_Out_12
$00D4	$	L_LCD8_Out_14:
$00D4	$0E80	    			MOVLW	128
$00D6	$6E43	    			MOVWF	FARG_LCD8_Out+0, 0
$00D8	$D019	    			BRA	L_LCD8_Out_13
$00DA	$	L_LCD8_Out_15:
$00DA	$0EC0	    			MOVLW	192
$00DC	$6E43	    			MOVWF	FARG_LCD8_Out+0, 0
$00DE	$D016	    			BRA	L_LCD8_Out_13
$00E0	$	L_LCD8_Out_16:
$00E0	$0E94	    			MOVLW	148
$00E2	$6E43	    			MOVWF	FARG_LCD8_Out+0, 0
$00E4	$D013	    			BRA	L_LCD8_Out_13
$00E6	$	L_LCD8_Out_17:
$00E6	$0ED4	    			MOVLW	212
$00E8	$6E43	    			MOVWF	FARG_LCD8_Out+0, 0
$00EA	$D010	    			BRA	L_LCD8_Out_13
$00EC	$	L_LCD8_Out_18:
$00EC	$0E80	    			MOVLW	128
$00EE	$6E43	    			MOVWF	FARG_LCD8_Out+0, 0
$00F0	$D00D	    			BRA	L_LCD8_Out_13
$00F2	$	L_LCD8_Out_12:
$00F2	$5043	    			MOVF	FARG_LCD8_Out+0, 0, 0
$00F4	$0A01	    			XORLW	1
$00F6	$E0EE	    			BZ	L_LCD8_Out_14
$00F8	$5043	    			MOVF	FARG_LCD8_Out+0, 0, 0
$00FA	$0A02	    			XORLW	2
$00FC	$E0EE	    			BZ	L_LCD8_Out_15
$00FE	$5043	    			MOVF	FARG_LCD8_Out+0, 0, 0
$0100	$0A03	    			XORLW	3
$0102	$E0EE	    			BZ	L_LCD8_Out_16
$0104	$5043	    			MOVF	FARG_LCD8_Out+0, 0, 0
$0106	$0A04	    			XORLW	4
$0108	$E0EE	    			BZ	L_LCD8_Out_17
$010A	$D7F0	    			BRA	L_LCD8_Out_18
$010C	$	L_LCD8_Out_13:
$010C	$0444	    			DECF	FARG_LCD8_Out+1, 0, 0
$010E	$6E00	    			MOVWF	STACK_0, 0
$0110	$5043	    			MOVF	FARG_LCD8_Out+0, 0, 0
$0112	$2600	    			ADDWF	STACK_0, 1, 0
$0114	$C000	F043			MOVFF	STACK_0, FARG_LCD8_Out+0
$0118	$0E01	    			MOVLW	1
$011A	$6E19	    			MOVWF	Lcd8bit_main_global_cmd, 0
$011C	$C000	F048			MOVFF	STACK_0, FARG_Lcd8_Cmd+0
$0120	$EC1C	F000			CALL	_Lcd8_Cmd
$0124	$6A19	    			CLRF	Lcd8bit_main_global_cmd, 0
$0126	$6A47	    			CLRF	LCD8_Out_i_L0, 0
$0128	$	L_LCD8_Out_19:
$0128	$5047	    			MOVF	LCD8_Out_i_L0, 0, 0
$012A	$2445	    			ADDWF	FARG_LCD8_Out+2, 0, 0
$012C	$6EE9	    			MOVWF	FSR0L, 0
$012E	$0E00	    			MOVLW	0
$0130	$2046	    			ADDWFC	FARG_LCD8_Out+3, 0, 0
$0132	$6EEA	    			MOVWF	FSR0L+1, 0
$0134	$CFEE	F000			MOVFF	POSTINC0, STACK_0
$0138	$5200	    			MOVF	STACK_0, 1, 0
$013A	$E00C	    			BZ	L_LCD8_Out_20
$013C	$5047	    			MOVF	LCD8_Out_i_L0, 0, 0
$013E	$2445	    			ADDWF	FARG_LCD8_Out+2, 0, 0
$0140	$6EE9	    			MOVWF	FSR0L, 0
$0142	$0E00	    			MOVLW	0
$0144	$2046	    			ADDWFC	FARG_LCD8_Out+3, 0, 0
$0146	$6EEA	    			MOVWF	FSR0L+1, 0
$0148	$CFEE	F048			MOVFF	POSTINC0, FARG_Lcd8_Cmd+0
$014C	$EC1C	F000			CALL	_Lcd8_Cmd
$0150	$2A47	    			INCF	LCD8_Out_i_L0, 1, 0
$0152	$D7EA	    			BRA	L_LCD8_Out_19
$0154	$	L_LCD8_Out_20:
$0154	$0E01	    			MOVLW	1
$0156	$6E19	    			MOVWF	Lcd8bit_main_global_cmd, 0
$0158	$0012	    			RETURN
$015A	$	_WordToStr:
$015A	$C045	FFE9			MOVFF	FARG_WordToStr+2, FSR0L
$015E	$C046	FFEA			MOVFF	FARG_WordToStr+3, FSR0H
$0162	$0E20	    			MOVLW	32
$0164	$6EEE	    			MOVWF	POSTINC0, 0
$0166	$0E20	    			MOVLW	32
$0168	$6EEE	    			MOVWF	POSTINC0, 0
$016A	$0E20	    			MOVLW	32
$016C	$6EEE	    			MOVWF	POSTINC0, 0
$016E	$0E20	    			MOVLW	32
$0170	$6EEE	    			MOVWF	POSTINC0, 0
$0172	$0E20	    			MOVLW	32
$0174	$6EEE	    			MOVWF	POSTINC0, 0
$0176	$6AEF	    			CLRF	INDF0, 0
$0178	$0E01	    			MOVLW	1
$017A	$6E47	    			MOVWF	WordToStr_len_L0, 0
$017C	$0E00	    			MOVLW	0
$017E	$6E00	    			MOVWF	STACK_0, 0
$0180	$5044	    			MOVF	FARG_WordToStr+1, 0, 0
$0182	$5C00	    			SUBWF	STACK_0, 0, 0
$0184	$E102	    			BNZ	L_WordToStr_55
$0186	$5043	    			MOVF	FARG_WordToStr+0, 0, 0
$0188	$0809	    			SUBLW	9
$018A	$	L_WordToStr_55:
$018A	$A0D8	    			BTFSS	STATUS, C, 0
$018C	$2A47	    			INCF	WordToStr_len_L0, 1, 0
$018E	$	L_WordToStr_4:
$018E	$0E00	    			MOVLW	0
$0190	$6E00	    			MOVWF	STACK_0, 0
$0192	$5044	    			MOVF	FARG_WordToStr+1, 0, 0
$0194	$5C00	    			SUBWF	STACK_0, 0, 0
$0196	$E102	    			BNZ	L_WordToStr_56
$0198	$5043	    			MOVF	FARG_WordToStr+0, 0, 0
$019A	$0863	    			SUBLW	99
$019C	$	L_WordToStr_56:
$019C	$A0D8	    			BTFSS	STATUS, C, 0
$019E	$2A47	    			INCF	WordToStr_len_L0, 1, 0
$01A0	$	L_WordToStr_5:
$01A0	$5044	    			MOVF	FARG_WordToStr+1, 0, 0
$01A2	$0803	    			SUBLW	3
$01A4	$E102	    			BNZ	L_WordToStr_57
$01A6	$5043	    			MOVF	FARG_WordToStr+0, 0, 0
$01A8	$08E7	    			SUBLW	231
$01AA	$	L_WordToStr_57:
$01AA	$A0D8	    			BTFSS	STATUS, C, 0
$01AC	$2A47	    			INCF	WordToStr_len_L0, 1, 0
$01AE	$	L_WordToStr_6:
$01AE	$5044	    			MOVF	FARG_WordToStr+1, 0, 0
$01B0	$0827	    			SUBLW	39
$01B2	$E102	    			BNZ	L_WordToStr_58
$01B4	$5043	    			MOVF	FARG_WordToStr+0, 0, 0
$01B6	$080F	    			SUBLW	15
$01B8	$	L_WordToStr_58:
$01B8	$A0D8	    			BTFSS	STATUS, C, 0
$01BA	$2A47	    			INCF	WordToStr_len_L0, 1, 0
$01BC	$	L_WordToStr_7:
$01BC	$6AED	    			CLRF	POSTDEC0, 0
$01BE	$	L_WordToStr_8:
$01BE	$5047	    			MOVF	WordToStr_len_L0, 0, 0
$01C0	$0800	    			SUBLW	0
$01C2	$E224	    			BC	L_WordToStr_9
$01C4	$0E0A	    			MOVLW	10
$01C6	$6E04	    			MOVWF	STACK_4, 0
$01C8	$0E00	    			MOVLW	0
$01CA	$6E05	    			MOVWF	STACK_4+1, 0
$01CC	$C043	F000			MOVFF	FARG_WordToStr+0, STACK_0
$01D0	$C044	F001			MOVFF	FARG_WordToStr+1, STACK_0+1
$01D4	$EC4B	F000			CALL	_div_16x16_u
$01D8	$C008	F000			MOVFF	STACK_8, STACK_0
$01DC	$C009	F001			MOVFF	STACK_9, STACK_1
$01E0	$C000	FFEF			MOVFF	STACK_0, INDF0
$01E4	$50EF	    			MOVF	INDF0, 0, 0
$01E6	$5C43	    			SUBWF	FARG_WordToStr+0, 0, 0
$01E8	$6E00	    			MOVWF	STACK_0, 0
$01EA	$0E00	    			MOVLW	0
$01EC	$5844	    			SUBWFB	FARG_WordToStr+1, 0, 0
$01EE	$6E01	    			MOVWF	STACK_0+1, 0
$01F0	$0E0A	    			MOVLW	10
$01F2	$6E04	    			MOVWF	STACK_4, 0
$01F4	$0E00	    			MOVLW	0
$01F6	$6E05	    			MOVWF	STACK_4+1, 0
$01F8	$EC4B	F000			CALL	_div_16x16_u
$01FC	$C000	F043			MOVFF	STACK_0, FARG_WordToStr+0
$0200	$C001	F044			MOVFF	STACK_0+1, FARG_WordToStr+1
$0204	$0E30	    			MOVLW	48
$0206	$26ED	    			ADDWF	POSTDEC0, 1, 0
$0208	$0647	    			DECF	WordToStr_len_L0, 1, 0
$020A	$D7D9	    			BRA	L_WordToStr_8
$020C	$	L_WordToStr_9:
$020C	$0012	    			RETURN
$020E	$	_Lcd8_Init:
$020E	$EC07	F000			CALL	_Delay_5500us
$0212	$EC07	F000			CALL	_Delay_5500us
$0216	$EC07	F000			CALL	_Delay_5500us
$021A	$C045	F015			MOVFF	FARG_Lcd8_Init+2, Lcd8bit_main_global_dataAddress
$021E	$C046	F016			MOVFF	FARG_Lcd8_Init+3, Lcd8bit_main_global_dataAddress+1
$0222	$C043	F017			MOVFF	FARG_Lcd8_Init+0, Lcd8bit_main_global_ctrlAddress
$0226	$C044	F018			MOVFF	FARG_Lcd8_Init+1, Lcd8bit_main_global_ctrlAddress+1
$022A	$C043	FFE9			MOVFF	FARG_Lcd8_Init+0, FSR0L
$022E	$C044	FFEA			MOVFF	FARG_Lcd8_Init+1, FSR0H
$0232	$90EF	    			BCF	INDF0, __LCD8_RW, 0
$0234	$C045	FFE1			MOVFF	FARG_Lcd8_Init+2, FSR1L
$0238	$C046	FFE2			MOVFF	FARG_Lcd8_Init+3, FSR1H
$023C	$6AE6	    			CLRF	POSTINC1, 0
$023E	$0E11	    			MOVLW	17
$0240	$24E1	    			ADDWF	FSR1L, 0, 0
$0242	$6E00	    			MOVWF	STACK_0, 0
$0244	$C000	FFE1			MOVFF	STACK_0, FSR1L
$0248	$6AE7	    			CLRF	INDF1, 0
$024A	$0E12	    			MOVLW	18
$024C	$5C00	    			SUBWF	STACK_0, 0, 0
$024E	$6EE1	    			MOVWF	FSR1L, 0
$0250	$0E12	    			MOVLW	18
$0252	$26E9	    			ADDWF	FSR0L, 1, 0
$0254	$92EF	    			BCF	INDF0, __LCD8_ENABLE, 0
$0256	$94EF	    			BCF	INDF0, __LCD8_RS, 0
$0258	$90EF	    			BCF	INDF0, __LCD8_RW, 0
$025A	$0E12	    			MOVLW	18
$025C	$5EE9	    			SUBWF	FSR0L, 1, 0
$025E	$94EF	    			BCF	INDF0, __LCD8_RS, 0
$0260	$92EF	    			BCF	INDF0, __LCD8_ENABLE, 0
$0262	$90EF	    			BCF	INDF0, __LCD8_RW, 0
$0264	$0E30	    			MOVLW	48
$0266	$6E48	    			MOVWF	FARG_Lcd8_Cmd+0, 0
$0268	$EC1C	F000			CALL	_Lcd8_Cmd
$026C	$0E30	    			MOVLW	48
$026E	$6E48	    			MOVWF	FARG_Lcd8_Cmd+0, 0
$0270	$EC1C	F000			CALL	_Lcd8_Cmd
$0274	$0E30	    			MOVLW	48
$0276	$6E48	    			MOVWF	FARG_Lcd8_Cmd+0, 0
$0278	$EC1C	F000			CALL	_Lcd8_Cmd
$027C	$0E38	    			MOVLW	56
$027E	$6E48	    			MOVWF	FARG_Lcd8_Cmd+0, 0
$0280	$EC1C	F000			CALL	_Lcd8_Cmd
$0284	$0E08	    			MOVLW	8
$0286	$6E48	    			MOVWF	FARG_Lcd8_Cmd+0, 0
$0288	$EC1C	F000			CALL	_Lcd8_Cmd
$028C	$0E01	    			MOVLW	1
$028E	$6E48	    			MOVWF	FARG_Lcd8_Cmd+0, 0
$0290	$EC1C	F000			CALL	_Lcd8_Cmd
$0294	$0E06	    			MOVLW	6
$0296	$6E48	    			MOVWF	FARG_Lcd8_Cmd+0, 0
$0298	$EC1C	F000			CALL	_Lcd8_Cmd
$029C	$0E0C	    			MOVLW	12
$029E	$6E48	    			MOVWF	FARG_Lcd8_Cmd+0, 0
$02A0	$EC1C	F000			CALL	_Lcd8_Cmd
$02A4	$0E01	    			MOVLW	1
$02A6	$6E19	    			MOVWF	Lcd8bit_main_global_cmd, 0
$02A8	$0012	    			RETURN
$02AA	$	_main:
$02AA	$0E56	    			MOVLW	86
$02AC	$6E1A	    			MOVWF	lstr1_display_lcd+0, 0
$02AE	$0E61	    			MOVLW	97
$02B0	$6E1B	    			MOVWF	lstr1_display_lcd+1, 0
$02B2	$0E73	    			MOVLW	115
$02B4	$6E1C	    			MOVWF	lstr1_display_lcd+2, 0
$02B6	$0E63	    			MOVLW	99
$02B8	$6E1D	    			MOVWF	lstr1_display_lcd+3, 0
$02BA	$0E6F	    			MOVLW	111
$02BC	$6E1E	    			MOVWF	lstr1_display_lcd+4, 0
$02BE	$0E58	    			MOVLW	88
$02C0	$6E1F	    			MOVWF	lstr1_display_lcd+5, 0
$02C2	$0E46	    			MOVLW	70
$02C4	$6E20	    			MOVWF	lstr1_display_lcd+6, 0
$02C6	$0E6C	    			MOVLW	108
$02C8	$6E21	    			MOVWF	lstr1_display_lcd+7, 0
$02CA	$0E61	    			MOVLW	97
$02CC	$6E22	    			MOVWF	lstr1_display_lcd+8, 0
$02CE	$0E6D	    			MOVLW	109
$02D0	$6E23	    			MOVWF	lstr1_display_lcd+9, 0
$02D2	$0E65	    			MOVLW	101
$02D4	$6E24	    			MOVWF	lstr1_display_lcd+10, 0
$02D6	$0E6E	    			MOVLW	110
$02D8	$6E25	    			MOVWF	lstr1_display_lcd+11, 0
$02DA	$0E67	    			MOVLW	103
$02DC	$6E26	    			MOVWF	lstr1_display_lcd+12, 0
$02DE	$0E6F	    			MOVLW	111
$02E0	$6E27	    			MOVWF	lstr1_display_lcd+13, 0
$02E2	$6A28	    			CLRF	lstr1_display_lcd+14, 0
$02E4	$0E30	    			MOVLW	48
$02E6	$6E29	    			MOVWF	lstr2_display_lcd+0, 0
$02E8	$6A2A	    			CLRF	lstr2_display_lcd+1, 0
$02EA	$0E30	    			MOVLW	48
$02EC	$6E2B	    			MOVWF	lstr3_display_lcd+0, 0
$02EE	$6A2C	    			CLRF	lstr3_display_lcd+1, 0
;display_lcd.c,1 :: 			void main () {
;display_lcd.c,2 :: 			char contadorV = 0;
$02F0	$6A2D	    			CLRF	main_contadorV_L0, 0
;display_lcd.c,3 :: 			char contadorF = 0;
$02F2	$6A2E	    			CLRF	main_contadorF_L0, 0
;display_lcd.c,6 :: 			trisd = 0;
$02F4	$6A95	    			CLRF	TRISD, 0
;display_lcd.c,7 :: 			trise = 0;
$02F6	$6A96	    			CLRF	TRISE, 0
;display_lcd.c,8 :: 			ADCON1 = 0x06;
$02F8	$0E06	    			MOVLW	6
$02FA	$6EC1	    			MOVWF	ADCON1, 0
;display_lcd.c,9 :: 			trisb.rb0 = 1;
$02FC	$8093	    			BSF	TRISB, 0, 0
;display_lcd.c,10 :: 			trisb.rb1 = 1;
$02FE	$8293	    			BSF	TRISB, 1, 0
;display_lcd.c,11 :: 			lcd8_config(&porte,&portd,2,1,0,7,6,5,4,3,2,1,0);
$0300	$0E84	    			MOVLW	PORTE
$0302	$6E43	    			MOVWF	FARG_Lcd8_Init+0, 0
$0304	$0E0F	    			MOVLW	@PORTE
$0306	$6E44	    			MOVWF	FARG_Lcd8_Init+1, 0
$0308	$0E83	    			MOVLW	PORTD
$030A	$6E45	    			MOVWF	FARG_Lcd8_Init+2, 0
$030C	$0E0F	    			MOVLW	@PORTD
$030E	$6E46	    			MOVWF	FARG_Lcd8_Init+3, 0
$0310	$EC07	F001			CALL	_Lcd8_Init
;display_lcd.c,12 :: 			lcd8_cmd(lcd_clear);
$0314	$0E01	    			MOVLW	1
$0316	$6E48	    			MOVWF	FARG_Lcd8_Cmd+0, 0
$0318	$EC1C	F000			CALL	_Lcd8_Cmd
;display_lcd.c,13 :: 			lcd8_cmd(lcd_cursor_off);
$031C	$0E0C	    			MOVLW	12
$031E	$6E48	    			MOVWF	FARG_Lcd8_Cmd+0, 0
$0320	$EC1C	F000			CALL	_Lcd8_Cmd
;display_lcd.c,14 :: 			lcd8_out(1, 1, "VascoXFlamengo");
$0324	$0E01	    			MOVLW	1
$0326	$6E43	    			MOVWF	FARG_LCD8_Out+0, 0
$0328	$0E01	    			MOVLW	1
$032A	$6E44	    			MOVWF	FARG_LCD8_Out+1, 0
$032C	$0E1A	    			MOVLW	lstr1_display_lcd
$032E	$6E45	    			MOVWF	FARG_LCD8_Out+2, 0
$0330	$0E00	    			MOVLW	@lstr1_display_lcd
$0332	$6E46	    			MOVWF	FARG_LCD8_Out+3, 0
$0334	$EC69	F000			CALL	_LCD8_Out
;display_lcd.c,15 :: 			lcd8_out(2, 3, "0");
$0338	$0E02	    			MOVLW	2
$033A	$6E43	    			MOVWF	FARG_LCD8_Out+0, 0
$033C	$0E03	    			MOVLW	3
$033E	$6E44	    			MOVWF	FARG_LCD8_Out+1, 0
$0340	$0E29	    			MOVLW	lstr2_display_lcd
$0342	$6E45	    			MOVWF	FARG_LCD8_Out+2, 0
$0344	$0E00	    			MOVLW	@lstr2_display_lcd
$0346	$6E46	    			MOVWF	FARG_LCD8_Out+3, 0
$0348	$EC69	F000			CALL	_LCD8_Out
;display_lcd.c,16 :: 			lcd8_out(2, 11, "0");
$034C	$0E02	    			MOVLW	2
$034E	$6E43	    			MOVWF	FARG_LCD8_Out+0, 0
$0350	$0E0B	    			MOVLW	11
$0352	$6E44	    			MOVWF	FARG_LCD8_Out+1, 0
$0354	$0E2B	    			MOVLW	lstr3_display_lcd
$0356	$6E45	    			MOVWF	FARG_LCD8_Out+2, 0
$0358	$0E00	    			MOVLW	@lstr3_display_lcd
$035A	$6E46	    			MOVWF	FARG_LCD8_Out+3, 0
$035C	$EC69	F000			CALL	_LCD8_Out
;display_lcd.c,17 :: 			while (1) {
$0360	$	L_main_0:
;display_lcd.c,18 :: 			if (portb.rb0 == 0) {
$0360	$0E01	    			MOVLW	1
$0362	$1481	    			ANDWF	PORTB, 0, 0
$0364	$6E01	    			MOVWF	STACK_1, 0
$0366	$5001	    			MOVF	STACK_1, 0, 0
$0368	$0A00	    			XORLW	0
$036A	$E136	    			BNZ	L_main_2
;display_lcd.c,19 :: 			contadorV++;
$036C	$2A2D	    			INCF	main_contadorV_L0, 1, 0
;display_lcd.c,20 :: 			wordToStr(contadorV, vasco);
$036E	$C02D	F043			MOVFF	main_contadorV_L0, FARG_WordToStr+0
$0372	$0E00	    			MOVLW	0
$0374	$6E44	    			MOVWF	FARG_WordToStr+1, 0
$0376	$0E2F	    			MOVLW	main_vasco_L0
$0378	$6E45	    			MOVWF	FARG_WordToStr+2, 0
$037A	$0E00	    			MOVLW	@main_vasco_L0
$037C	$6E46	    			MOVWF	FARG_WordToStr+3, 0
$037E	$ECAD	F000			CALL	_WordToStr
;display_lcd.c,21 :: 			delay_ms(200);
$0382	$0E03	    			MOVLW	3
$0384	$6E0C	    			MOVWF	STACK_12, 0
$0386	$0EFF	    			MOVLW	255
$0388	$6E0B	    			MOVWF	STACK_11, 0
$038A	$0EFF	    			MOVLW	255
$038C	$6E0A	    			MOVWF	STACK_10, 0
$038E	$2E0C	    			DECFSZ	STACK_12, F, 0
$0390	$D001	    			BRA	$+2
$0392	$D007	    			BRA	$+8
$0394	$2E0B	    			DECFSZ	STACK_11, F, 0
$0396	$D001	    			BRA	$+2
$0398	$D003	    			BRA	$+4
$039A	$2E0A	    			DECFSZ	STACK_10, F, 0
$039C	$D7FE	    			BRA	$-1
$039E	$D7FA	    			BRA	$-5
$03A0	$D7F6	    			BRA	$-9
$03A2	$0E0B	    			MOVLW	11
$03A4	$6E0B	    			MOVWF	STACK_11, 0
$03A6	$0EFF	    			MOVLW	255
$03A8	$6E0A	    			MOVWF	STACK_10, 0
$03AA	$2E0B	    			DECFSZ	STACK_11, F, 0
$03AC	$D001	    			BRA	$+2
$03AE	$D003	    			BRA	$+4
$03B0	$2E0A	    			DECFSZ	STACK_10, F, 0
$03B2	$D7FE	    			BRA	$-1
$03B4	$D7FA	    			BRA	$-5
$03B6	$0E18	    			MOVLW	24
$03B8	$6E0A	    			MOVWF	STACK_10, 0
$03BA	$2E0A	    			DECFSZ	STACK_10, F, 0
$03BC	$D7FE	    			BRA	$-1
$03BE	$0000	    			NOP
$03C0	$0000	    			NOP
;display_lcd.c,22 :: 			lcd8_out(2, 3, vasco);
$03C2	$0E02	    			MOVLW	2
$03C4	$6E43	    			MOVWF	FARG_LCD8_Out+0, 0
$03C6	$0E03	    			MOVLW	3
$03C8	$6E44	    			MOVWF	FARG_LCD8_Out+1, 0
$03CA	$0E2F	    			MOVLW	main_vasco_L0
$03CC	$6E45	    			MOVWF	FARG_LCD8_Out+2, 0
$03CE	$0E00	    			MOVLW	@main_vasco_L0
$03D0	$6E46	    			MOVWF	FARG_LCD8_Out+3, 0
$03D2	$EC69	F000			CALL	_LCD8_Out
;display_lcd.c,23 :: 			} else if (portb.rb1 == 0) {
$03D6	$D03B	    			BRA	L_main_3
$03D8	$	L_main_2:
$03D8	$6A01	    			CLRF	STACK_1, 0
$03DA	$B281	    			BTFSC	PORTB, 1, 0
$03DC	$2A01	    			INCF	STACK_1, 1, 0
$03DE	$5001	    			MOVF	STACK_1, 0, 0
$03E0	$0A00	    			XORLW	0
$03E2	$E135	    			BNZ	L_main_4
;display_lcd.c,24 :: 			contadorF++;
$03E4	$2A2E	    			INCF	main_contadorF_L0, 1, 0
;display_lcd.c,25 :: 			wordToStr(contadorF, flamengo);
$03E6	$C02E	F043			MOVFF	main_contadorF_L0, FARG_WordToStr+0
$03EA	$0E00	    			MOVLW	0
$03EC	$6E44	    			MOVWF	FARG_WordToStr+1, 0
$03EE	$0E39	    			MOVLW	main_flamengo_L0
$03F0	$6E45	    			MOVWF	FARG_WordToStr+2, 0
$03F2	$0E00	    			MOVLW	@main_flamengo_L0
$03F4	$6E46	    			MOVWF	FARG_WordToStr+3, 0
$03F6	$ECAD	F000			CALL	_WordToStr
;display_lcd.c,26 :: 			delay_ms(200);
$03FA	$0E03	    			MOVLW	3
$03FC	$6E0C	    			MOVWF	STACK_12, 0
$03FE	$0EFF	    			MOVLW	255
$0400	$6E0B	    			MOVWF	STACK_11, 0
$0402	$0EFF	    			MOVLW	255
$0404	$6E0A	    			MOVWF	STACK_10, 0
$0406	$2E0C	    			DECFSZ	STACK_12, F, 0
$0408	$D001	    			BRA	$+2
$040A	$D007	    			BRA	$+8
$040C	$2E0B	    			DECFSZ	STACK_11, F, 0
$040E	$D001	    			BRA	$+2
$0410	$D003	    			BRA	$+4
$0412	$2E0A	    			DECFSZ	STACK_10, F, 0
$0414	$D7FE	    			BRA	$-1
$0416	$D7FA	    			BRA	$-5
$0418	$D7F6	    			BRA	$-9
$041A	$0E0B	    			MOVLW	11
$041C	$6E0B	    			MOVWF	STACK_11, 0
$041E	$0EFF	    			MOVLW	255
$0420	$6E0A	    			MOVWF	STACK_10, 0
$0422	$2E0B	    			DECFSZ	STACK_11, F, 0
$0424	$D001	    			BRA	$+2
$0426	$D003	    			BRA	$+4
$0428	$2E0A	    			DECFSZ	STACK_10, F, 0
$042A	$D7FE	    			BRA	$-1
$042C	$D7FA	    			BRA	$-5
$042E	$0E18	    			MOVLW	24
$0430	$6E0A	    			MOVWF	STACK_10, 0
$0432	$2E0A	    			DECFSZ	STACK_10, F, 0
$0434	$D7FE	    			BRA	$-1
$0436	$0000	    			NOP
$0438	$0000	    			NOP
;display_lcd.c,27 :: 			lcd8_out(2, 11, flamengo);
$043A	$0E02	    			MOVLW	2
$043C	$6E43	    			MOVWF	FARG_LCD8_Out+0, 0
$043E	$0E0B	    			MOVLW	11
$0440	$6E44	    			MOVWF	FARG_LCD8_Out+1, 0
$0442	$0E39	    			MOVLW	main_flamengo_L0
$0444	$6E45	    			MOVWF	FARG_LCD8_Out+2, 0
$0446	$0E00	    			MOVLW	@main_flamengo_L0
$0448	$6E46	    			MOVWF	FARG_LCD8_Out+3, 0
$044A	$EC69	F000			CALL	_LCD8_Out
;display_lcd.c,28 :: 			}
$044E	$	L_main_4:
$044E	$	L_main_3:
;display_lcd.c,29 :: 			}
$044E	$D788	    			BRA	L_main_0
;display_lcd.c,30 :: 			}
$0450	$D7FF	    			BRA	$