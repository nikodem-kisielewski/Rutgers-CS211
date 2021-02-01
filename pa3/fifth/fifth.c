#include<stdlib.h>
#include<stdio.h>
#include<math.h>
#include<tgmath.h>

int toDec(double num, int manBits, int binary[], int mantissa[], int totalBits) {
    int counter = 1;
    int exp = 0;
    int temp1 = 1;

    if (num < 0) {
        printf("1");
        num *= -1;
    } else {
        printf("0");
    }

    while (pow(2, exp+1) < num) {
        exp++;
        temp1++;
    }

    while (num > 0 || counter != 64) {
        if (pow(2, exp) <= num) {
            binary[counter] = 1;
            num -= pow(2, exp);
        } else {
            binary[counter] = 0;
        }
        exp--;
        counter++;
    }

    counter = 0;
    while (binary[counter] != 1) {
        counter++;
        temp1--;
    }

    int newC = 0;
    for (int i = counter+1; i < counter+totalBits; i++) {
        mantissa[newC] = binary[i];
        newC++;
    }
    return temp1;
}

void makeExp(int expBits, int expCalc) {
    int bias = pow(2, expBits - 1) - 1;
    int final = bias + expCalc;

    int x = expBits - 1;
    while (x >= 0) {
        if (pow(2, x) > final) {
            printf("0");
        } else {
            printf("1");
            final -= pow(2, x);
        }
        x--;
    }
}

void roundMan(int mantissa[], int manBits, int expCalc) {
    int tempExp = manBits+1;
    int lowTemp = 0;
    // int highTemp = 0;
    int actual = 0;
    int max = 0;

    for (int i = 0; i < manBits; i++) {
        max += pow(2, i);
    }

    for (int i = 0; i < manBits+2; i++) {
        if (mantissa[i] == 1) {
            actual += pow(2, tempExp);
        }
        tempExp--;
    }

    /*
    if (actual == max) {
        expCalc += 1;
        for (int i = 0; i < manBits; i++) {
            mantissa[i] = 0;
        }
    }
    */

    tempExp = manBits - 1;
    for (int i = 0; i < manBits; i++) {
        if (mantissa[i] == 1) {
            lowTemp += pow(2, tempExp);
        }
        tempExp--;
    }
}

void fifth(double number, int manBits, int binary[], int mantissa[],
    int totalBits, int expCalc, int expBits) {

    for (int i = 0; i < 65; i++) {
        binary[i] = 0;
        mantissa[i] = 0;
    }

    expCalc = toDec(number, manBits, binary, mantissa, totalBits);
    roundMan(mantissa, manBits, expCalc);
    makeExp(expBits, expCalc);
    for (int i = 0; i < manBits; i++) {
        printf("%d", mantissa[i]);
    }
    printf("\n");
}

int main(int argc, char* argv[argc+1]) {

    FILE* fp = fopen(argv[1], "r");

    double number;
    int totalBits, manBits, expBits, binary[65], mantissa[65];
    int expCalc = 0;
    while (fscanf(fp, "%le %d %d %d\n", &number, &totalBits, &expBits, &manBits) != EOF) {
        fifth(number, manBits, binary, mantissa, totalBits, expCalc, expBits);
    }

    fclose(fp);

    return EXIT_SUCCESS;
}