
_InitHW:

;PIC16F877A_TEST.c,47 :: 		void InitHW(){
;PIC16F877A_TEST.c,50 :: 		PORTA = 0x00;                          // Priprava pro konfiguraci portu PORT A
	CLRF       PORTA+0
;PIC16F877A_TEST.c,51 :: 		PORTB = 0x00;                          // PORT B
	CLRF       PORTB+0
;PIC16F877A_TEST.c,52 :: 		PORTC = 0x00;                          // PORT C
	CLRF       PORTC+0
;PIC16F877A_TEST.c,53 :: 		PORTD = 0x00;                          // PORT D
	CLRF       PORTD+0
;PIC16F877A_TEST.c,54 :: 		PORTE = 0x00;                          // PORT E
	CLRF       PORTE+0
;PIC16F877A_TEST.c,57 :: 		TRISA = 0b00000000;                    // --11 1111        // Nastaveni I/O 0=Output / 1=Input
	CLRF       TRISA+0
;PIC16F877A_TEST.c,58 :: 		TRISB = 0b00000000;                    // 1111 1111        // PORTB I/O
	CLRF       TRISB+0
;PIC16F877A_TEST.c,59 :: 		TRISC = 0b00000000;                    // 1111 1111        // PORTC I/O
	CLRF       TRISC+0
;PIC16F877A_TEST.c,60 :: 		TRISD = 0b00000000;                    // 0000 -111        // PORTC I/O
	CLRF       TRISD+0
;PIC16F877A_TEST.c,61 :: 		TRISE = 0b00000000;
	CLRF       TRISE+0
;PIC16F877A_TEST.c,63 :: 		} // end Init
L_end_InitHW:
	RETURN
; end of _InitHW

_LED_Blik:

;PIC16F877A_TEST.c,67 :: 		void LED_Blik() {
;PIC16F877A_TEST.c,68 :: 		PORTA = 1;
	MOVLW      1
	MOVWF      PORTA+0
;PIC16F877A_TEST.c,69 :: 		Delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      207
	MOVWF      R12+0
	MOVLW      29
	MOVWF      R13+0
L_LED_Blik0:
	DECFSZ     R13+0, 1
	GOTO       L_LED_Blik0
	DECFSZ     R12+0, 1
	GOTO       L_LED_Blik0
	DECFSZ     R11+0, 1
	GOTO       L_LED_Blik0
;PIC16F877A_TEST.c,70 :: 		PORTA = 0;
	CLRF       PORTA+0
;PIC16F877A_TEST.c,71 :: 		Delay_ms(1000);
	MOVLW      15
	MOVWF      R11+0
	MOVLW      7
	MOVWF      R12+0
	MOVLW      154
	MOVWF      R13+0
L_LED_Blik1:
	DECFSZ     R13+0, 1
	GOTO       L_LED_Blik1
	DECFSZ     R12+0, 1
	GOTO       L_LED_Blik1
	DECFSZ     R11+0, 1
	GOTO       L_LED_Blik1
	NOP
;PIC16F877A_TEST.c,72 :: 		}
L_end_LED_Blik:
	RETURN
; end of _LED_Blik

_main:

;PIC16F877A_TEST.c,75 :: 		void main() {
;PIC16F877A_TEST.c,76 :: 		InitHW();
	CALL       _InitHW+0
;PIC16F877A_TEST.c,79 :: 		while (1) {
L_main2:
;PIC16F877A_TEST.c,81 :: 		LED_Blik();
	CALL       _LED_Blik+0
;PIC16F877A_TEST.c,84 :: 		}//end loop
	GOTO       L_main2
;PIC16F877A_TEST.c,87 :: 		}//end main
L_end_main:
	GOTO       $+0
; end of _main
