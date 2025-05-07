
_main:

;P10.c,6 :: 		void main()
;P10.c,8 :: 		ANSEL  = 0x04;                // El pin AN2 se configura como analógico
	MOVLW      4
	MOVWF      ANSEL+0
;P10.c,9 :: 		ANSELH = 0x00;                // Los demás pines se configuran como digitales
	CLRF       ANSELH+0
;P10.c,10 :: 		TRISA  = 0xFF;                // Todos los pines del puerto PORTA se configuran como entradas
	MOVLW      255
	MOVWF      TRISA+0
;P10.c,11 :: 		TRISB  = 0x00;                // Todos los pines del puerto PORTB se configuran como salidas
	CLRF       TRISB+0
;P10.c,12 :: 		TRISC  = 0x00;                // Todos los pines del puerto PORTC se configuran como salidas
	CLRF       TRISC+0
;P10.c,13 :: 		C1ON_bit = 0;
	BCF        C1ON_bit+0, 7
;P10.c,14 :: 		C2ON_bit = 0;
	BCF        C2ON_bit+0, 7
;P10.c,16 :: 		do
L_main0:
;P10.c,18 :: 		temp_res = ADC_Read(2);     // El resultado de la conversión A/D es copiado a temp_res
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp_res+0
	MOVF       R0+1, 0
	MOVWF      _temp_res+1
;P10.c,19 :: 		PORTB = temp_res;           // 8 bits menos significativos se mueven al puerto PORTB
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;P10.c,20 :: 		PORTC = temp_res >> 8;      // 2 bits más significativos se mueven a los bits RC0 y RC1
	MOVF       R0+1, 0
	MOVWF      R2+0
	CLRF       R2+1
	MOVF       R2+0, 0
	MOVWF      PORTC+0
;P10.c,23 :: 		while(1);                     // Bucle infinito
	GOTO       L_main0
;P10.c,24 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
