#line 1 "C:/Users/Altgtrmc10/Desktop/Proyectos/P10 - C/P10.c"



unsigned int temp_res;

void main()
{
 ANSEL = 0x04;
 ANSELH = 0x00;
 TRISA = 0xFF;
 TRISB = 0x00;
 TRISC = 0x00;
 C1ON_bit = 0;
 C2ON_bit = 0;

 do
 {
 temp_res = ADC_Read(2);
 PORTB = temp_res;
 PORTC = temp_res >> 8;
 }

 while(1);
}
