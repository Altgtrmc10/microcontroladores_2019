// Práctica 10
// Alitzel Galiea Torres Macías

unsigned int temp_res;

void main()
{
  ANSEL  = 0x04;                // El pin AN2 se configura como analógico
  ANSELH = 0x00;                // Los demás pines se configuran como digitales
  TRISA  = 0xFF;                // Todos los pines del puerto PORTA se configuran como entradas
  TRISB  = 0x00;                // Todos los pines del puerto PORTB se configuran como salidas
  TRISC  = 0x00;                // Todos los pines del puerto PORTC se configuran como salidas
  C1ON_bit = 0;
  C2ON_bit = 0;

  do
  {
    temp_res = ADC_Read(2);     // El resultado de la conversión A/D es copiado a temp_res
    PORTB = temp_res;           // 8 bits menos significativos se mueven al puerto PORTB
    PORTC = temp_res >> 8;      // 2 bits más significativos se mueven a los bits RC0 y RC1
  } 
  
  while(1);                     // Bucle infinito
}