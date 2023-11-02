//-----------------------------< definice vstupu >-----------------------------
//---- PORT A -----
#define RA0 PORTA.F0 //
#define RA1 PORTA.F1 //
#define RA2 PORTA.F2 //
#define RA3 PORTA.F3 //
#define RA4 PORTA.F4 //
#define RA5 PORTA.F5 //

//---- PORT B -----
#define RB0 PORTB.F0 //
#define RB1 PORTB.F1 //
#define RB2 PORTB.F2 //
#define RB3 PORTB.F3 //
#define RB4 PORTB.F4 //
#define RB5 PORTB.F5 //
#define RB6 PORTB.F6 //
#define RB7 PORTB.F7 //

//---- PORT C -----
#define RC0 PORTC.F0 //
#define RC1 PORTC.F1 //
#define RC2 PORTC.F2 //
#define RC3 PORTC.F3 //
#define RC4 PORTC.F4 //
#define RC5 PORTC.F5 //
#define RC6 PORTC.F6 //
#define RC7 PORTC.F7 //

//---- PORT D -----
#define RD0 PORTD.F0 //
#define RD1 PORTD.F1 //
#define RD2 PORTD.F2 //
#define RD3 PORTD.F3 //
#define RD4 PORTD.F4 //
#define RD5 PORTD.F5 //
#define RD6 PORTD.F6 //
#define RD7 PORTD.F7 //

//---- PORTE -----
#define RE0 PORTE.F0 //
#define RE1 PORTE.F1 //
#define RE2 PORTE.F2 //
//---------------------

//-----------------------------------------------------------------------------
void InitHW(){

 //----
  PORTA = 0x00;                          // Priprava pro konfiguraci portu PORT A
  PORTB = 0x00;                          // PORT B
  PORTC = 0x00;                          // PORT C
  PORTD = 0x00;                          // PORT D
  PORTE = 0x00;                          // PORT E
  
 //----                                  // 1=direction change, 0=jine nastaveni
  TRISA = 0b00000000;                    // --11 1111        // Nastaveni I/O 0=Output / 1=Input
  TRISB = 0b00000000;                    // 1111 1111        // PORTB I/O
  TRISC = 0b00000000;                    // 1111 1111        // PORTC I/O
  TRISD = 0b00000000;                    // 0000 -111        // PORTC I/O
  TRISE = 0b00000000;

 } // end Init


//--------------------------------------------------------------------------------------
void LED_Blik() {
 PORTA = 1;
 Delay_ms(200);
 PORTA = 0;
 Delay_ms(1000);
}
//--------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------
void main() {
    InitHW();

    //------------------------- L O O P -----------------------------
    while (1) {

     LED_Blik();
      //RB5 = 1;

    }//end loop


 }//end main
