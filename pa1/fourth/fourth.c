#include<stdlib.h>
#include<stdio.h>
#include<string.h>

void makeSquare(int n) {

    int mat[n][n];

    memset(mat, 0, sizeof(mat));

    int i = 0;
    int j = (n/2);
    mat[i][j] = 1;
    i--;
    j++;

    for (int count = 2; count <= n*n;) {
        if (i == -1 && j == n) {
            i = n-1;
            j = 0;
        } else {
            if (i < 0) {
                i = n + i;
            }
            if (i > n - 1) {
                i = i - n;
            }
            if (j == n) {
                j = 0;
            }
            if (j < 0) {
                j = j + n;
            }
        }
        if (mat[i][j]) {
            i += 2;
            j--;
            continue;
        } else {
            mat[i][j] = count++;
            i--;
            j++;
        }
    }

    for (i = 0; i < n; i++) {
        for (j = 0; j < n; j++) {
            printf("%d	", mat[i][j]);
        }
        printf("\n");
    }
};

int main(int argc, char* argv[argc+1]) {

    int input = atoi(argv[1]);

    if (input % 2 == 0) {
        printf("error");
        return EXIT_SUCCESS;
    }

    makeSquare(input);

    return EXIT_SUCCESS;
}
