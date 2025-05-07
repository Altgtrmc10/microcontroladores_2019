
_main:

;P4.c,9 :: 		void main()
;P4.c,11 :: 		TRISA = 0xFF;      // Todos los pines del puerto PORTA se configuran como entradas
	MOVLW      255
	MOVWF      TRISA+0
;P4.c,12 :: 		TRISB = 0x00;      // Todos los pines del puerto PORTA se configuran como salidas
	CLRF       TRISB+0
;P4.c,13 :: 		ANSEL = 0x00;      // Todos los pines de E/S se configuran como digitales
	CLRF       ANSEL+0
;P4.c,14 :: 		ANSELH = 0x00;     // Todos los pines de E/S se configuran como digitales
	CLRF       ANSELH+0
;P4.c,16 :: 		while(1) // Ciclo infinito
L_main0:
;P4.c,18 :: 		display(PORTA); // Se escribe el número correspondiente
	MOVF       PORTA+0, 0
	MOVWF      FARG_display_n+0
	CLRF       FARG_display_n+1
	CALL       _display+0
;P4.c,19 :: 		}
	GOTO       L_main0
;P4.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_display:

;P4.c,22 :: 		void display(int n)
;P4.c,24 :: 		switch(n)
	GOTO       L_display2
;P4.c,26 :: 		case 0: // 0
L_display4:
;P4.c,27 :: 		PORTB = 0x3F;
	MOVLW      63
	MOVWF      PORTB+0
;P4.c,28 :: 		break;
	GOTO       L_display3
;P4.c,29 :: 		case 1: // 1
L_display5:
;P4.c,30 :: 		PORTB = 0x06;
	MOVLW      6
	MOVWF      PORTB+0
;P4.c,31 :: 		break;
	GOTO       L_display3
;P4.c,32 :: 		case 2: // 2
L_display6:
;P4.c,33 :: 		PORTB = 0x5B;
	MOVLW      91
	MOVWF      PORTB+0
;P4.c,34 :: 		break;
	GOTO       L_display3
;P4.c,35 :: 		case 3: // 3
L_display7:
;P4.c,36 :: 		PORTB = 0x4F;
	MOVLW      79
	MOVWF      PORTB+0
;P4.c,37 :: 		break;
	GOTO       L_display3
;P4.c,38 :: 		case 4: // 4
L_display8:
;P4.c,39 :: 		PORTB = 0x66;
	MOVLW      102
	MOVWF      PORTB+0
;P4.c,40 :: 		break;
	GOTO       L_display3
;P4.c,41 :: 		case 5: // 5
L_display9:
;P4.c,42 :: 		PORTB = 0x6D;
	MOVLW      109
	MOVWF      PORTB+0
;P4.c,43 :: 		break;
	GOTO       L_display3
;P4.c,44 :: 		case 6: // 6
L_display10:
;P4.c,45 :: 		PORTB = 0x7D;
	MOVLW      125
	MOVWF      PORTB+0
;P4.c,46 :: 		break;
	GOTO       L_display3
;P4.c,47 :: 		case 7: // 7
L_display11:
;P4.c,48 :: 		PORTB = 0x07;
	MOVLW      7
	MOVWF      PORTB+0
;P4.c,49 :: 		break;
	GOTO       L_display3
;P4.c,50 :: 		case 8: // 8
L_display12:
;P4.c,51 :: 		PORTB = 0x7F;
	MOVLW      127
	MOVWF      PORTB+0
;P4.c,52 :: 		break;
	GOTO       L_display3
;P4.c,53 :: 		case 9: // 9
L_display13:
;P4.c,54 :: 		PORTB = 0x67;
	MOVLW      103
	MOVWF      PORTB+0
;P4.c,55 :: 		break;
	GOTO       L_display3
;P4.c,56 :: 		case 10: // A
L_display14:
;P4.c,57 :: 		PORTB = 0x77;
	MOVLW      119
	MOVWF      PORTB+0
;P4.c,58 :: 		break;
	GOTO       L_display3
;P4.c,59 :: 		case 11: // B
L_display15:
;P4.c,60 :: 		PORTB = 0x7C;
	MOVLW      124
	MOVWF      PORTB+0
;P4.c,61 :: 		break;
	GOTO       L_display3
;P4.c,62 :: 		case 12: // C
L_display16:
;P4.c,63 :: 		PORTB = 0x39;
	MOVLW      57
	MOVWF      PORTB+0
;P4.c,64 :: 		break;
	GOTO       L_display3
;P4.c,65 :: 		case 13: // D
L_display17:
;P4.c,66 :: 		PORTB = 0x5E;
	MOVLW      94
	MOVWF      PORTB+0
;P4.c,67 :: 		break;
	GOTO       L_display3
;P4.c,68 :: 		case 14: // E
L_display18:
;P4.c,69 :: 		PORTB = 0x79;
	MOVLW      121
	MOVWF      PORTB+0
;P4.c,70 :: 		break;
	GOTO       L_display3
;P4.c,71 :: 		case 15: // F
L_display19:
;P4.c,72 :: 		PORTB = 0x71;
	MOVLW      113
	MOVWF      PORTB+0
;P4.c,73 :: 		break;
	GOTO       L_display3
;P4.c,74 :: 		default: // Otro
L_display20:
;P4.c,75 :: 		PORTB = 0x80;
	MOVLW      128
	MOVWF      PORTB+0
;P4.c,76 :: 		break;
	GOTO       L_display3
;P4.c,77 :: 		}
L_display2:
	MOVLW      0
	XORWF      FARG_display_n+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display23
	MOVLW      0
	XORWF      FARG_display_n+0, 0
L__display23:
	BTFSC      STATUS+0, 2
	GOTO       L_display4
	MOVLW      0
	XORWF      FARG_display_n+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display24
	MOVLW      1
	XORWF      FARG_display_n+0, 0
L__display24:
	BTFSC      STATUS+0, 2
	GOTO       L_display5
	MOVLW      0
	XORWF      FARG_display_n+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display25
	MOVLW      2
	XORWF      FARG_display_n+0, 0
L__display25:
	BTFSC      STATUS+0, 2
	GOTO       L_display6
	MOVLW      0
	XORWF      FARG_display_n+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display26
	MOVLW      3
	XORWF      FARG_display_n+0, 0
L__display26:
	BTFSC      STATUS+0, 2
	GOTO       L_display7
	MOVLW      0
	XORWF      FARG_display_n+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display27
	MOVLW      4
	XORWF      FARG_display_n+0, 0
L__display27:
	BTFSC      STATUS+0, 2
	GOTO       L_display8
	MOVLW      0
	XORWF      FARG_display_n+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display28
	MOVLW      5
	XORWF      FARG_display_n+0, 0
L__display28:
	BTFSC      STATUS+0, 2
	GOTO       L_display9
	MOVLW      0
	XORWF      FARG_display_n+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display29
	MOVLW      6
	XORWF      FARG_display_n+0, 0
L__display29:
	BTFSC      STATUS+0, 2
	GOTO       L_display10
	MOVLW      0
	XORWF      FARG_display_n+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display30
	MOVLW      7
	XORWF      FARG_display_n+0, 0
L__display30:
	BTFSC      STATUS+0, 2
	GOTO       L_display11
	MOVLW      0
	XORWF      FARG_display_n+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display31
	MOVLW      8
	XORWF      FARG_display_n+0, 0
L__display31:
	BTFSC      STATUS+0, 2
	GOTO       L_display12
	MOVLW      0
	XORWF      FARG_display_n+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display32
	MOVLW      9
	XORWF      FARG_display_n+0, 0
L__display32:
	BTFSC      STATUS+0, 2
	GOTO       L_display13
	MOVLW      0
	XORWF      FARG_display_n+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display33
	MOVLW      10
	XORWF      FARG_display_n+0, 0
L__display33:
	BTFSC      STATUS+0, 2
	GOTO       L_display14
	MOVLW      0
	XORWF      FARG_display_n+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display34
	MOVLW      11
	XORWF      FARG_display_n+0, 0
L__display34:
	BTFSC      STATUS+0, 2
	GOTO       L_display15
	MOVLW      0
	XORWF      FARG_display_n+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display35
	MOVLW      12
	XORWF      FARG_display_n+0, 0
L__display35:
	BTFSC      STATUS+0, 2
	GOTO       L_display16
	MOVLW      0
	XORWF      FARG_display_n+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display36
	MOVLW      13
	XORWF      FARG_display_n+0, 0
L__display36:
	BTFSC      STATUS+0, 2
	GOTO       L_display17
	MOVLW      0
	XORWF      FARG_display_n+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display37
	MOVLW      14
	XORWF      FARG_display_n+0, 0
L__display37:
	BTFSC      STATUS+0, 2
	GOTO       L_display18
	MOVLW      0
	XORWF      FARG_display_n+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__display38
	MOVLW      15
	XORWF      FARG_display_n+0, 0
L__display38:
	BTFSC      STATUS+0, 2
	GOTO       L_display19
	GOTO       L_display20
L_display3:
;P4.c,78 :: 		}
L_end_display:
	RETURN
; end of _display
