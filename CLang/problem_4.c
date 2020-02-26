#include <stdio.h>
#include <stdlib.h>

void reverseNum(char *str1, char *str2) {
    str2[5] = str1[0];
    str2[4] = str1[1];
    str2[3] = str1[2];
    str2[2] = str1[3];
    str2[1] = str1[4];
    str2[0] = str1[5];
}


int main(void){
    int digits1, digits2;
    digits1 = digits2 = 999;

    char num[7];
    char reversed_num[7];
    int largest_palindrome = 0;

    int i, j;
    int calculated_num;
    for(i = digits1; 99 < i; i--){
        
        for(j = digits2; 99 < j; j--){
            snprintf(num, 7, "%d", i * j);

            reverseNum(num, reversed_num);

            calculated_num = atoi(num);
            if(calculated_num == atoi(reversed_num) && largest_palindrome < calculated_num){
               largest_palindrome = calculated_num;
               break;
            }
        }
       printf("digits1: %d, digits2: %d\n", i, j); 
    }

    printf("%d\n", largest_palindrome);

    return 0;
}

