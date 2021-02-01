#include<stdlib.h>
#include<stdio.h>
#include<math.h>
#include<tgmath.h>

void toSigned(short binary[], int bits) {
    short temp = bits;
    long tempNum = 0;
    if (binary[0] == 1) {
        tempNum = tempNum + powl(2, temp-1) *-1;
    }

    temp -= 2;
    for (int i = 1; i < bits; i++) {
        if (binary[i] == 1) {
            tempNum += powl(2, temp);
        }
        temp -= 1;
    }
    printf("%ld", tempNum);
}

void toUnsigned(short binary[], int bits) {
    short counter = bits-1;
    long tempNum = 0;
    for (int i = 0; i < bits; i++) {
        if (binary[i] == 1) {
            tempNum += powl(2, counter);
        }
        counter--;
    }
    printf("%ld", tempNum);
}

void makeSigned(long double num, int bits, short binary[]) {
    short temp = bits;
    bits -= 2;

    if (num > 0) {
        binary[0] = 0;
    } else {
        binary[0] = 1;
        num = num + pow(2, temp-1);
    }

    for (int i = 1; i < temp; i++) {
        if (powl(2, bits) <= num) {
            num = num - pow(2, bits);
            binary[i] = 1;
        } else {
            binary[i] = 0;
        }
        bits = bits - 1;
    }
}

void makeUnsigned(long double num, int bits, short binary[]) {
    short temp = bits;
    bits -= 1;

    for (int i = 0; i < temp; i++) {
        if (powl(2, bits) <= num) {
            num = num - pow(2, bits);
            binary[i] = 1;
        } else {
            binary[i] = 0;
        }
        bits -= 1;
    }
}

int main(int argc, char* argv[argc+1]) {

    FILE* fp = fopen(argv[1], "r");

    long double number;
    int bits;
    char from, to;
    while (fscanf(fp, "%Le %d %c %c\n", &number, &bits, &from, &to) != EOF) {
        short binary[bits];
        if (number == 0) {
            printf("0");
        } else if (from == 'u') {
            makeUnsigned(number, bits, binary);
            toSigned(binary, bits);
        } else {
            makeSigned(number, bits, binary);
            toUnsigned(binary, bits);
        }
        printf("\n");
    }

    fclose(fp);

    return EXIT_SUCCESS;
}