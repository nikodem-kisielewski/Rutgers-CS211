#include<stdio.h>
#include<stdlib.h>

int isPrime(int num);

int isPrime (int num) {
    if (num == 0 || num == 1) {
        return 0;
    }
    for (int i = 2; i < num; i ++) {
        if (num % i == 0) {
            return 0;
        }
    }
    return 1;
};

int main(int argc, char*argv[argc+1]) {
    FILE* fp = fopen(argv[1], "r");

    int num;
    while (fscanf(fp, "%d", &num) != EOF) {
        if (isPrime(num) && (isPrime(num+2) || isPrime(num-2))) {
            printf("yes\n");
        } else {
            printf("no\n");
        }
    }

    fclose(fp);

    return EXIT_SUCCESS;
}