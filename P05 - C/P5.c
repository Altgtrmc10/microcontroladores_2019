// Práctica 5
// Alitzel Galiea Torres Macías

#define Entradas PORTA
#define Salidas PORTB

void anillo(int n);
void johnson(int n);

void main()                     // Inicio del programa
{
     TRISA = 0xFF;              // Todos los pines del puerto PORTA se configuran como entradas
     TRISB = 0x00;              // Todos los pines del puerto PORTB se configuran como salidas
     ANSEL = 0x00;              // Todos los pines de E/S se configuran como digitales
     ANSELH = 0x00;             // Todos los pines de E/S se configuran como digitales
     PORTA = 0x00;
     PORTB = 0x00;
     while(1)
     {
      int i;
      if(PORTA.B0 == 0)
      {
        anillo(i);
      }
      else
      {
        johnson(i);
      }
     }
}

void anillo(int n)
{
  PORTB.B0 = 1;       // Bit menos significativo = 1
  delay_ms(1000);     // Retardo de 1 segundo
  PORTB.B0 = 0;       // Bit menos significativo = 0
  PORTB.B1 = 1;
  delay_ms(1000);
  PORTB.B1 = 0;
  PORTB.B2 = 1;
  delay_ms(1000);
  PORTB.B2 = 0;
  PORTB.B3 = 1;
  delay_ms(1000);
  PORTB.B3 = 0;
  PORTB.B4 = 1;
  delay_ms(1000);
  PORTB.B4 = 0;
  PORTB.B5 = 1;
  delay_ms(1000);
  PORTB.B5 = 0;
  PORTB.B6 = 1;
  delay_ms(1000);
  PORTB.B6 = 0;
  PORTB.B7 = 1;
  delay_ms(1000);
  PORTB.B7 = 0;
}

void johnson(int n)
{
  PORTB.B0 = 1;       // Bit menos significativo = 1
  delay_ms(1000);     // Retardo de 1 segundo
  PORTB.B1 = 1;
  delay_ms(1000);
  PORTB.B2 = 1;
  delay_ms(1000);
  PORTB.B3 = 1;
  delay_ms(1000);
  PORTB.B4 = 1;
  delay_ms(1000);
  PORTB.B5 = 1;
  delay_ms(1000);
  PORTB.B6 = 1;
  delay_ms(1000);
  PORTB.B7 = 1;
  delay_ms(1000);
  PORTB.B0 = 0;       // Bit menos significativo = 0
  delay_ms(1000);
  PORTB.B1 = 0;
  delay_ms(1000);
  PORTB.B2 = 0;
  delay_ms(1000);
  PORTB.B3 = 0;
  delay_ms(1000);
  PORTB.B4 = 0;
  delay_ms(1000);
  PORTB.B5 = 0;
  delay_ms(1000);
  PORTB.B6 = 0;
  delay_ms(1000);
  PORTB.B7 = 0;
}