#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

struct Map {
    int key;
    char* value;
};

char* itoa(int number) {
    int n = log10(number) + 1;
    int i;
    char *numberArray = malloc(n);
    for (i = n-1; i >= 0; --i, number /= 10)
    {
        numberArray[i] = (number % 10) + '0';
    }
    return numberArray;
}

char* concat(char* arr1, char* arr2) {
    int newSize = strlen(arr1)  + strlen(arr2) + 1; 
    char* newArr = malloc(newSize);
    strcpy(newArr,arr1);
    strcat(newArr,arr2);
    return newArr;
}

int main()
{
    struct Map dict[2] ={
        {3, "Fizz"},
        {5, "Buzz"}
    };
    char* output;
    for (int i = 1; i <= 100; i++) {
        output = "";
        for ( int j = 0; j < sizeof dict / sizeof dict[0]; j++ ) {
            if (i % dict[j].key == 0) {
                output = concat(output, dict[j].value);
            }
        }
        if (output == "") {
           output = itoa(i);
        }
        printf("%s\n", output);
    }
    return 0;
}
