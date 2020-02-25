#include <stdio.h>

int main(void){
    int num_before = 1;
    int fibonacci_num = 2;
    int sum = 0;

    while (fibonacci_num < 4000000){
        if (fibonacci_num % 2 == 0)
           sum = sum + fibonacci_num;
        
        int tmp = fibonacci_num;
        fibonacci_num = fibonacci_num + num_before;
        num_before = tmp;
    } 

    printf("%i\n", sum);
    return 0;
}