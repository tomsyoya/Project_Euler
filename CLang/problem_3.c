#include <stdio.h>
#include <stdlib.h>

int main(void){
    long biggest_num = 600851475143;

    int divisor = 2;
    while (biggest_num > 1){
        if((biggest_num % divisor) == 0){
            biggest_num /= divisor;
            divisor--;
        }
        divisor++;
    }

    printf("%d\n", divisor);
    return 0;
}