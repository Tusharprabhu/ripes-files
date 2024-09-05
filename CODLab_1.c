#include<stdio.h>
int main()
{
     int a,b,c,d;
     a = 3;b = 4;
     c = a+b;
     a = b+3*c;
     if (a >b)
         c = 17;
     d = (1024 - 512) - (256 - 128);
     printf("%d %d %d %d ",a,b,c,d);   
 }