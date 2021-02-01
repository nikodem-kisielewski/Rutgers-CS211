#include<stdlib.h>
#include<stdio.h>
#include<math.h>
#include<tgmath.h>

void second(long double num, int bits) {
    int counter = bits - 1;
    long double tempNum = num;

    if (num == 0) {
        while (counter > -1) {
            printf("0");
            counter--;
        }
        return;
    }

    if (num < 0) {
        if (num < powl(2, counter) * -1) {
            printf("1");
            while (counter > 0) {
                printf("0");
                counter--;
            }
            return;
        }
    }

    if (num > 0) {
        tempNum = 0;
        counter--;
        while (counter > -1) {
            tempNum = tempNum + powl(2, counter);
            counter--;
        }
        if (tempNum < num) {
            counter = bits - 1;
            printf("0");
            while(counter > 0) {
                printf("1");
                counter--;
            }
            return;
        }
    }

    bits -= 1;
    if (num > 0) {
        printf("0");
        bits--;
    } else {
        printf("1");
        num = num + pow(2, bits);
        bits--;
    }

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
        second(number, bits);
        printf("\n");
    }

    fclose(fp);

    return EXIT_SUCCESS;
}