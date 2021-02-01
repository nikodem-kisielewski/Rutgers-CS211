#include<stdlib.h>
#include<stdio.h>
#include<math.h>
#include<tgmath.h>

int customRem(long double num, int bits) {
    int div = pow(2, bits);
    long int x = num/div;
    x = x*div;
    num = num - x;
    return num;
}

void first(long double num, int bits) {
    int counter = bits - 1;
    long double tempNum = num;

    if (num == 0) {
        while (counter > -1) {
            printf("0");
            counter--;
        }
        return;
    }

    while (counter > -1) {
        tempNum = tempNum - powl(2, counter);
        counter -= 1;
    }

    if (tempNum > 0) {
        num = customRem(num, bits);
    }

    bits -= 1;
    while (bits > -1) {
        if (powl(2, bits) <= num) {
            num = num - pow(2, bits);
            printf("1");
        } else {
            printf("0");
        }
        bits = bits - 1;
    }
}

int main(int argc, char* argv[argc+1]) {

    FILE* fp = fopen(argv[1], "r");

    long double number;
    int bits;
    while (fscanf(fp, "%Le %d\n", &number, &bits) != EOF) {
        first(number, bits);
        printf("\n");
    }

    fclose(fp);

    return EXIT_SUCCESS;
}