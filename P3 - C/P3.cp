#line 1 "C:/Users/Altgtrmc10/Desktop/Proyectos/P3/P3.c"






void main()
{
 TRISA = 0xFF;
 TRISB = 0x00;
 ANSEL = 0x00;
 ANSELH = 0x00;

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
