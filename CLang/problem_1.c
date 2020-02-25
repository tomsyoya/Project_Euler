#include <stdio.h>

int main(void){
    int sum = 0;

    int n;
    for(n = 0; n < 1000; n++){
        if(n % 5 == 0 || n % 3 == 0)
           sum = sum + n;
    }

    printf("%i",sum);
    return 0;
}