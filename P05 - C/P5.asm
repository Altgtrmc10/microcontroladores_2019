
_main:

;P5.c,10 :: 		void main()                     // Inicio del programa
;P5.c,12 :: 		TRISA = 0xFF;              // Todos los pines del puerto PORTA se configuran como entradas
	MOVLW      255
	MOVWF      TRISA+0
;P5.c,13 :: 		TRISB = 0x00;              // Todos los pines del puerto PORTB se configuran como salidas
	CLRF       TRISB+0
;P5.c,14 :: 		ANSEL = 0x00;              // Todos los pines de E/S se configuran como digitales
	CLRF       ANSEL+0
;P5.c,15 :: 		ANSELH = 0x00;             // Todos los pines de E/S se configuran como digitales
	CLRF       ANSELH+0
;P5.c,16 :: 		PORTA = 0x00;
	CLRF       PORTA+0
;P5.c,17 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;P5.c,18 :: 		while(1)
L_main0:
;P5.c,21 :: 		if(PORTA.B0 == 0)
	BTFSC      PORTA+0, 0
	GOTO       L_main2
;P5.c,23 :: 		anillo(i);
	MOVF       main_i_L1+0, 0
	MOVWF      FARG_anillo_n+0
	MOVF       main_i_L1+1, 0
	MOVWF      FARG_anillo_n+1
	CALL       _anillo+0
;P5.c,24 :: 		}
	GOTO       L_main3
L_main2:
;P5.c,27 :: 		johnson(i);
	MOVF       main_i_L1+0, 0
	MOVWF      FARG_johnson_n+0
	MOVF       main_i_L1+1, 0
	MOVWF      FARG_johnson_n+1
	CALL       _johnson+0
;P5.c,28 :: 		}
L_main3:
;P5.c,29 :: 		}
	GOTO       L_main0
;P5.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_anillo:

;P5.c,32 :: 		void anillo(int n)
;P5.c,34 :: 		PORTB.B0 = 1;       // Bit menos significativo = 1
	BSF        PORTB+0, 0
;P5.c,35 :: 		delay_ms(1000);     // Retardo de 1 segundo
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_anillo4:
	DECFSZ     R13+0, 1
	GOTO       L_anillo4
	DECFSZ     R12+0, 1
	GOTO       L_anillo4
	DECFSZ     R11+0, 1
	GOTO       L_anillo4
	NOP
	NOP
;P5.c,36 :: 		PORTB.B0 = 0;       // Bit menos significativo = 0
	BCF        PORTB+0, 0
;P5.c,37 :: 		PORTB.B1 = 1;
	BSF        PORTB+0, 1
;P5.c,38 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_anillo5:
	DECFSZ     R13+0, 1
	GOTO       L_anillo5
	DECFSZ     R12+0, 1
	GOTO       L_anillo5
	DECFSZ     R11+0, 1
	GOTO       L_anillo5
	NOP
	NOP
;P5.c,39 :: 		PORTB.B1 = 0;
	BCF        PORTB+0, 1
;P5.c,40 :: 		PORTB.B2 = 1;
	BSF        PORTB+0, 2
;P5.c,41 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_anillo6:
	DECFSZ     R13+0, 1
	GOTO       L_anillo6
	DECFSZ     R12+0, 1
	GOTO       L_anillo6
	DECFSZ     R11+0, 1
	GOTO       L_anillo6
	NOP
	NOP
;P5.c,42 :: 		PORTB.B2 = 0;
	BCF        PORTB+0, 2
;P5.c,43 :: 		PORTB.B3 = 1;
	BSF        PORTB+0, 3
;P5.c,44 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_anillo7:
	DECFSZ     R13+0, 1
	GOTO       L_anillo7
	DECFSZ     R12+0, 1
	GOTO       L_anillo7
	DECFSZ     R11+0, 1
	GOTO       L_anillo7
	NOP
	NOP
;P5.c,45 :: 		PORTB.B3 = 0;
	BCF        PORTB+0, 3
;P5.c,46 :: 		PORTB.B4 = 1;
	BSF        PORTB+0, 4
;P5.c,47 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_anillo8:
	DECFSZ     R13+0, 1
	GOTO       L_anillo8
	DECFSZ     R12+0, 1
	GOTO       L_anillo8
	DECFSZ     R11+0, 1
	GOTO       L_anillo8
	NOP
	NOP
;P5.c,48 :: 		PORTB.B4 = 0;
	BCF        PORTB+0, 4
;P5.c,49 :: 		PORTB.B5 = 1;
	BSF        PORTB+0, 5
;P5.c,50 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_anillo9:
	DECFSZ     R13+0, 1
	GOTO       L_anillo9
	DECFSZ     R12+0, 1
	GOTO       L_anillo9
	DECFSZ     R11+0, 1
	GOTO       L_anillo9
	NOP
	NOP
;P5.c,51 :: 		PORTB.B5 = 0;
	BCF        PORTB+0, 5
;P5.c,52 :: 		PORTB.B6 = 1;
	BSF        PORTB+0, 6
;P5.c,53 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_anillo10:
	DECFSZ     R13+0, 1
	GOTO       L_anillo10
	DECFSZ     R12+0, 1
	GOTO       L_anillo10
	DECFSZ     R11+0, 1
	GOTO       L_anillo10
	NOP
	NOP
;P5.c,54 :: 		PORTB.B6 = 0;
	BCF        PORTB+0, 6
;P5.c,55 :: 		PORTB.B7 = 1;
	BSF        PORTB+0, 7
;P5.c,56 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_anillo11:
	DECFSZ     R13+0, 1
	GOTO       L_anillo11
	DECFSZ     R12+0, 1
	GOTO       L_anillo11
	DECFSZ     R11+0, 1
	GOTO       L_anillo11
	NOP
	NOP
;P5.c,57 :: 		PORTB.B7 = 0;
	BCF        PORTB+0, 7
;P5.c,58 :: 		}
L_end_anillo:
	RETURN
; end of _anillo

_johnson:

;P5.c,60 :: 		void johnson(int n)
;P5.c,62 :: 		PORTB.B0 = 1;       // Bit menos significativo = 1
	BSF        PORTB+0, 0
;P5.c,63 :: 		delay_ms(1000);     // Retardo de 1 segundo
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_johnson12:
	DECFSZ     R13+0, 1
	GOTO       L_johnson12
	DECFSZ     R12+0, 1
	GOTO       L_johnson12
	DECFSZ     R11+0, 1
	GOTO       L_johnson12
	NOP
	NOP
;P5.c,64 :: 		PORTB.B1 = 1;
	BSF        PORTB+0, 1
;P5.c,65 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_johnson13:
	DECFSZ     R13+0, 1
	GOTO       L_johnson13
	DECFSZ     R12+0, 1
	GOTO       L_johnson13
	DECFSZ     R11+0, 1
	GOTO       L_johnson13
	NOP
	NOP
;P5.c,66 :: 		PORTB.B2 = 1;
	BSF        PORTB+0, 2
;P5.c,67 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_johnson14:
	DECFSZ     R13+0, 1
	GOTO       L_johnson14
	DECFSZ     R12+0, 1
	GOTO       L_johnson14
	DECFSZ     R11+0, 1
	GOTO       L_johnson14
	NOP
	NOP
;P5.c,68 :: 		PORTB.B3 = 1;
	BSF        PORTB+0, 3
;P5.c,69 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_johnson15:
	DECFSZ     R13+0, 1
	GOTO       L_johnson15
	DECFSZ     R12+0, 1
	GOTO       L_johnson15
	DECFSZ     R11+0, 1
	GOTO       L_johnson15
	NOP
	NOP
;P5.c,70 :: 		PORTB.B4 = 1;
	BSF        PORTB+0, 4
;P5.c,71 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_johnson16:
	DECFSZ     R13+0, 1
	GOTO       L_johnson16
	DECFSZ     R12+0, 1
	GOTO       L_johnson16
	DECFSZ     R11+0, 1
	GOTO       L_johnson16
	NOP
	NOP
;P5.c,72 :: 		PORTB.B5 = 1;
	BSF        PORTB+0, 5
;P5.c,73 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_johnson17:
	DECFSZ     R13+0, 1
	GOTO       L_johnson17
	DECFSZ     R12+0, 1
	GOTO       L_johnson17
	DECFSZ     R11+0, 1
	GOTO       L_johnson17
	NOP
	NOP
;P5.c,74 :: 		PORTB.B6 = 1;
	BSF        PORTB+0, 6
;P5.c,75 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_johnson18:
	DECFSZ     R13+0, 1
	GOTO       L_johnson18
	DECFSZ     R12+0, 1
	GOTO       L_johnson18
	DECFSZ     R11+0, 1
	GOTO       L_johnson18
	NOP
	NOP
;P5.c,76 :: 		PORTB.B7 = 1;
	BSF        PORTB+0, 7
;P5.c,77 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_johnson19:
	DECFSZ     R13+0, 1
	GOTO       L_johnson19
	DECFSZ     R12+0, 1
	GOTO       L_johnson19
	DECFSZ     R11+0, 1
	GOTO       L_johnson19
	NOP
	NOP
;P5.c,78 :: 		PORTB.B0 = 0;       // Bit menos significativo = 0
	BCF        PORTB+0, 0
;P5.c,79 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_johnson20:
	DECFSZ     R13+0, 1
	GOTO       L_johnson20
	DECFSZ     R12+0, 1
	GOTO       L_johnson20
	DECFSZ     R11+0, 1
	GOTO       L_johnson20
	NOP
	NOP
;P5.c,80 :: 		PORTB.B1 = 0;
	BCF        PORTB+0, 1
;P5.c,81 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_johnson21:
	DECFSZ     R13+0, 1
	GOTO       L_johnson21
	DECFSZ     R12+0, 1
	GOTO       L_johnson21
	DECFSZ     R11+0, 1
	GOTO       L_johnson21
	NOP
	NOP
;P5.c,82 :: 		PORTB.B2 = 0;
	BCF        PORTB+0, 2
;P5.c,83 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_johnson22:
	DECFSZ     R13+0, 1
	GOTO       L_johnson22
	DECFSZ     R12+0, 1
	GOTO       L_johnson22
	DECFSZ     R11+0, 1
	GOTO       L_johnson22
	NOP
	NOP
;P5.c,84 :: 		PORTB.B3 = 0;
	BCF        PORTB+0, 3
;P5.c,85 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_johnson23:
	DECFSZ     R13+0, 1
	GOTO       L_johnson23
	DECFSZ     R12+0, 1
	GOTO       L_johnson23
	DECFSZ     R11+0, 1
	GOTO       L_johnson23
	NOP
	NOP
;P5.c,86 :: 		PORTB.B4 = 0;
	BCF        PORTB+0, 4
;P5.c,87 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_johnson24:
	DECFSZ     R13+0, 1
	GOTO       L_johnson24
	DECFSZ     R12+0, 1
	GOTO       L_johnson24
	DECFSZ     R11+0, 1
	GOTO       L_johnson24
	NOP
	NOP
;P5.c,88 :: 		PORTB.B5 = 0;
	BCF        PORTB+0, 5
;P5.c,89 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_johnson25:
	DECFSZ     R13+0, 1
	GOTO       L_johnson25
	DECFSZ     R12+0, 1
	GOTO       L_johnson25
	DECFSZ     R11+0, 1
	GOTO       L_johnson25
	NOP
	NOP
;P5.c,90 :: 		PORTB.B6 = 0;
	BCF        PORTB+0, 6
;P5.c,91 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_johnson26:
	DECFSZ     R13+0, 1
	GOTO       L_johnson26
	DECFSZ     R12+0, 1
	GOTO       L_johnson26
	DECFSZ     R11+0, 1
	GOTO       L_johnson26
	NOP
	NOP
;P5.c,92 :: 		PORTB.B7 = 0;
	BCF        PORTB+0, 7
;P5.c,93 :: 		}
L_end_johnson:
	RETURN
; end of _johnson
