// Práctica 4
// Alitzel Galilea Torres Macías

#define Entradas PORTA
#define Salidas PORTB

void display(int n);

void main()
{
   TRISA = 0xFF;      // Todos los pines del puerto PORTA se configuran como entradas
   TRISB = 0x00;      // Todos los pines del puerto PORTB se configuran como salidas
   ANSEL = 0x00;      // Todos los pines de E/S se configuran como digitales
   ANSELH = 0x00;     // Todos los pines de E/S se configuran como digitales
   
   while(1) // Ciclo infinito
   {
      display(PORTA); // Se escribe el número correspondiente
   }
}

void display(int n)
{
   switch(n)
   {
      case 0: // 0
         PORTB = 0x3F;
         break;
      case 1: // 1
         PORTB = 0x06;
         break;
      case 2: // 2
         PORTB = 0x5B;
         break;
      case 3: // 3
         PORTB = 0x4F;
         break;
      case 4: // 4
         PORTB = 0x66;
         break;
      case 5: // 5
         PORTB = 0x6D;
         break;
      case 6: // 6
         PORTB = 0x7D;
         break;
      case 7: // 7
         PORTB = 0x07;
         break;
      case 8: // 8
         PORTB = 0x7F;
         break;
      case 9: // 9
         PORTB = 0x67;
         break;
      case 10: // A
         PORTB = 0x77;
         break;
      case 11: // B
         PORTB = 0x7C;
         break;
      case 12: // C
         PORTB = 0x39;
         break;
      case 13: // D
         PORTB = 0x5E;
         break;
      case 14: // E
         PORTB = 0x79;
         break;
      case 15: // F
         PORTB = 0x71;
         break;
      default: // Otro
         PORTB = 0x80;
         break;
   }
}