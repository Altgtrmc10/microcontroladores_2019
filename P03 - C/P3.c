// Práctica 3
// Alitzel Galilea Torres Macías

#define Entradas PORTA
#define Salidas PORTB

void main()
{
  TRISA = 0xFF;      // Todos los pines del puerto PORTA se configuran como entradas
  TRISB = 0x00;      // Todos los pines del puerto PORTA se configuran como salidas
  ANSEL = 0x00;      // Todos los pines de E/S se configuran como digitales
  ANSELH = 0x00;     // Todos los pines de E/S se configuran como digitales

  while (1)
  {
   if(PORTA == 0x11)
   {
    PORTB = 0xFF;
   }
   else
   {
    PORTB = 0x00;
   }
  }
}