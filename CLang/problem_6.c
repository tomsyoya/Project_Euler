#include <stdio.h>
#include <stdlib.h>

int main(void){
   long hundred_square_num = 1;
   int hundred_sum_num = 1;

   for(int i = 2; i <= 100; i++)
      hundred_square_num += i * i;
   
   for(int i = 2; i <= 100; i++)
      hundred_sum_num += i;
   
   long hundred_sum_square_num = hundred_sum_num * hundred_sum_num;
   
   printf("%ld", hundred_sum_square_num - hundred_square_num);
   return 0;
}
