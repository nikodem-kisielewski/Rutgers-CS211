#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h> 

void convertHex(char hex[], char binary[]) {
    for(int i = 2; hex[i]!='\0'; i++) {
        switch(hex[i]) {
            case '0':
                strcat(binary, "0000");
                break;
            case '1':
                strcat(binary, "0001");
                break;
            case '2':
                strcat(binary, "0010");
                break;
            case '3':
                strcat(binary, "0011");
                break;
            case '4':
                strcat(binary, "0100");
                break;
            case '5':
                strcat(binary, "0101");
                break;
            case '6':
                strcat(binary, "0110");
                break;
            case '7':
                strcat(binary, "0111");
                break;
            case '8':
                strcat(binary, "1000");
                break;
            case '9':
                strcat(binary, "1001");
                break;
            case 'a':
            case 'A':
                strcat(binary, "1010");
                break;
            case 'b':
            case 'B':
                strcat(binary, "1011");
                break;
            case 'c':
            case 'C':
                strcat(binary, "1100");
                break;
            case 'd':
            case 'D':
                strcat(binary, "1101");
                break;
            case 'e':
            case 'E':
                strcat(binary, "1110");
                break;
            case 'f':
            case 'F':
                strcat(binary, "1111");
                break;
            default:
            printf("error");
        }
    }
}

void makeIEEE(char binary[], char exp[], char mantissa[], int expBits, int fracBits, int totalBits) {
    for (int i = 1; i < expBits+1; i++) {
        exp[i-1] = binary[i];
    }
    
    int count = 0;
    for (int i = expBits+1; i < totalBits; i++) {
        mantissa[count] = binary[i];
        count++;
    }
    
}

double convertIEEE(char binary[], char mantissa[], char exp[], int expBits, int fracBits) {
    int tempExp = expBits - 1;
    int bias = pow(2, expBits - 1) - 1;
    int finalExp = 0;
    int temp1 = 0;
    double temp2 = 0;
    double decNum = 0;

    for (int i = 0; i < expBits; i++) {
        if (exp[i] == '1') {
            temp1 += pow(2, tempExp);
        }
        tempExp--;
    }
    finalExp = temp1 - bias;

    tempExp = -1;
    for (int i = 0; i < fracBits; i++) {
        if (mantissa[i] == '1') {
            temp2 += pow(2, tempExp);
        }
        tempExp--;
    }

    temp2 += 1;
    decNum = temp2 * pow(2, finalExp);

    if (binary[0] == '1') {
        decNum *= -1;
    }

    return decNum;

}

int main(int argc, char* argv[argc+1]) {

    FILE* fp = fopen(argv[1], "r");

    int totalBits, expBits, fracBits, precBits;
    char hex[17], binary[65];
    double decNum;

    while (fscanf(fp, "%d %d %d %s %d\n", &totalBits, &expBits, &fracBits,
        hex, &precBits) != EOF) {
            char exp[expBits];
            char yes[100];
            for (int i = 0; i < expBits; i++) {
                exp[i] = '0';
            }

            char mantissa[fracBits];
            for (int i = 0; i < fracBits; i++) {
                mantissa[i] = '0';
            }

            for (int i = 0; i < 65; i++) {
                binary[i] = 0;
            }


            convertHex(hex, binary);
            makeIEEE(binary, exp, mantissa, expBits, fracBits, totalBits);
            decNum = convertIEEE(binary, mantissa, exp, expBits, fracBits);
            sprintf(yes, "%d", precBits);
            char format[100];
            strcpy(format, "%.");
            strcat(format, yes);
            strcat(format, "f\n");
            printf(format, decNum);
    }

    return EXIT_SUCCESS; 
} 