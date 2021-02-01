#include<stdlib.h>
#include<stdio.h>
#include<math.h>
#include<tgmath.h>

void fourth(double num, int bits, int binary[]) {
    int counter = 1;
    int exp = 0;
    int temp1 = 1;

    while (pow(2, exp+1) < num) {
        exp++;
        temp1++;
    }

    while (num > 0) {
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

    for (int i = counter; i < counter+bits+1; i++) {
        printf("%d", binary[i]);
        if (i == counter) printf(".");
    }

    printf(" %d", temp1);

}

int main(int argc, char* argv[argc+1]) {

    FILE* fp = fopen(argv[1], "r");

    double number;
    int bits;
    int binary[65];
    while (fscanf(fp, "%le %d\n", &number, &bits) != EOF) {
        for (int i = 0; i < 65; i++) {
            binary[i] = 0;
        }
        fourth(number, bits, binary);
        printf("\n");
    }

    fclose(fp);

    return EXIT_SUCCESS;
}