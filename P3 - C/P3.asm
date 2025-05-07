
_main:

;P3.c,7 :: 		void main()
;P3.c,9 :: 		TRISA = 0xFF;      // Todos los pines del puerto PORTA se configuran como entradas
	MOVLW      255
	MOVWF      TRISA+0
;P3.c,10 :: 		TRISB = 0x00;      // Todos los pines del puerto PORTA se configuran como salidas
	CLRF       TRISB+0
;P3.c,11 :: 		ANSEL = 0x00;      // Todos los pines de E/S se configuran como digitales
	CLRF       ANSEL+0
;P3.c,12 :: 		ANSELH = 0x00;     // Todos los pines de E/S se configuran como digitales
	CLRF       ANSELH+0
;P3.c,14 :: 		while (1)
L_main0:
;P3.c,16 :: 		if(PORTA == 0x11)
	MOVF       PORTA+0, 0
	XORLW      17
	BTFSS      STATUS+0, 2
	GOTO       L_main2
;P3.c,18 :: 		PORTB = 0xFF;
	MOVLW      255
	MOVWF      PORTB+0
;P3.c,19 :: 		}
	GOTO       L_main3
L_main2:
;P3.c,22 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;P3.c,23 :: 		}
L_main3:
;P3.c,24 :: 		}
	GOTO       L_main0
;P3.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
