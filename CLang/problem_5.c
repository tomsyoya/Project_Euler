#include <stdio.h>
#include <stdlib.h>

int main(void){
    long init_dividable_num = 2520;

    long divisions[19] = {2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
    long min_dividable_num = 1;

    int FALSE = 0;
    int TRUE = 1;
    int isLoopEnd = FALSE;

    int i, j;
    for(i = init_dividable_num;; i += init_dividable_num){
       for(j = 1; j < 21; j++){
          if(i % j != 0)
             break;
          
          if(j == 20){
             min_dividable_num = i;
             isLoopEnd = TRUE;
          }
       }
           
       if(isLoopEnd)
          break;
    }


    printf("%ld\n", min_dividable_num);
    return 0;
}
