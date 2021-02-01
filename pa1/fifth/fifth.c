#include<stdlib.h>
#include<stdio.h>
#include<math.h>

int** readMatrix(FILE* fp, int* sizep){
    int size;
    fscanf(fp, "%d", &size);

    *sizep = size;

    int **mat = malloc(size*sizeof(int*));
    for (int i = 0; i < size; i++) {
        mat[i] = malloc(size*sizeof(int));
    }

    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            fscanf(fp, "%d", &mat[i][j]);
        }
        fscanf(fp, "\n");
    }
    return mat;
}

void freeMatrix(int** mat, int n){

    for (int i = 0; i < n; i++){
        free(mat[i]);
    }
    free(mat);
}

int determinant(int **mat, int n) {
    int i,j,j1,j2;
    int det = 0;
    int **m = NULL;

    if (n < 1) {
        return 0;

    } else if (n == 1) {
        det = mat[0][0] ;

    } else if (n == 2)  {
        det = mat[0][0] * mat[1][1] - mat[1][0] * mat[0][1];
        
    } else {
        det = 0;
        for (j1 = 0 ; j1 < n ; j1++) {
            m = malloc((n-1)* sizeof(int *));
            for (i = 0 ; i < n-1 ; i++) {
                m[i] = malloc((n-1)* sizeof(int));
            }
            for (i = 1 ; i < n ; i++) {
                j2 = 0;
                for (j = 0 ; j < n ; j++) {
                    if (j == j1) continue;
                    m[i-1][j2] = mat[i][j];
                    j2++;
                }
            }
            det += pow(-1.0,1.0 + j1 + 1.0) * mat[0][j1] * determinant(m,n-1);
            for (i = 0 ; i < n-1 ; i++) free(m[i]);
            free(m);
        }
    }
    return(det) ;
}

int main(int argc, char* argv[argc+1]) {
    FILE* fp = fopen(argv[1], "r");
    int size;
    int** mat = readMatrix(fp, &size);
    int ans = determinant(mat, size);

    printf("%d", ans);

    freeMatrix(mat, size);

    return EXIT_SUCCESS;
}
