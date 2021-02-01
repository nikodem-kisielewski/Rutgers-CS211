#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<math.h>
#include<unistd.h>
#include<limits.h>

int islru = 0;
int fifoCounter = 1;
int Assoc = 0;
int numberOfSets = 0;
int setIndexBits = 0;
int memRead = 0;
int memWrite = 0;
int hit = 0;
int miss = 0;
char hex[16], binary1[48], binary2[48], RorW;

typedef struct {
    int time;
    int setAddress;
    short valid;
    char tag[48];
} line;

int getSetAddress(char binary[], int blockSize, int setIndexBits);
void lru(line L1[][Assoc], int currSet, char thisTag[]);
void fifo(line L1[][Assoc], int currSet, char thisTag[]);

void updateTime(line L1[][Assoc]) {
    if (islru == 1) {
        if (numberOfSets != 1) {
            for(int i = 0; i < numberOfSets; i++) {
                if (Assoc == 1) {
                    if (L1[i][0].valid == 1) {
                        L1[i][0].time++;
                    }
                } else {
                    for (int j = 0; j < Assoc; j++) {
                        if (L1[i][j].valid == 1) {
                            L1[i][j].time++;
                        }
                    }
                }
            }
        } else {
            for (int z = 0; z < Assoc; z++) {
                if(L1[0][z].valid == 1) {
                    L1[0][z].time++;
                }
            }
        }
    } else {
        fifoCounter++;
    }
}

// checks if the cache and block sizes are powers of 2
int isPowerof2(int cacheSize, int blockSize) {
    if (cacheSize == 0 || blockSize == 0) {
        return 0;
    }
    if (ceil(log2(cacheSize)) == floor(log2(cacheSize))) {
        if (ceil(log2(blockSize)) == floor(log2(blockSize))) {
            return 1;
        }
    }
    return 0;
}

void readNotFully(line L1[][Assoc], char binary[], int indexNum) {
    for (int i = 0; i < numberOfSets; i++) {
        if (L1[i][0].valid == 0) {
            miss++;
            memRead++;
            L1[i][0].setAddress = indexNum;
            L1[i][0].valid = 1;
            if (islru == 1) {
                L1[i][0].time = 0;
            } else {
                L1[i][0].time = fifoCounter;
            }
            for (int a = 0; a < 48; a++) {
                L1[i][0].tag[a] = binary[a];
            }
            return;
        }
        if (L1[i][0].setAddress == indexNum) {
            for (int j = 0; j < Assoc; j++) {
                if (L1[i][j].valid == 0) {
                    miss++;
                    memRead++;
                    L1[i][j].valid = 1;
                    if (islru == 1) {
                        L1[i][j].time = 0;
                    } else {
                        L1[i][j].time = fifoCounter;
                    }
                    for(int x = 0; binary[x] != 0; x++) {
                        L1[i][j].tag[x] = binary[x];
                    }
                    return;
                }
                if (strcmp(L1[i][j].tag, binary) == 0) {
                    if (islru == 1) {
                        L1[i][j].time = 0;
                    }
                    hit++;
                    return;
                }
            }
            miss++;
            memRead++;
            if (islru == 1) {
                lru(L1, i, binary);
                return;
            } else {
                fifo(L1, i, binary);
                return;
            }
        }
    }
}

void readDirect(line L1[][Assoc], char binary[], int indexNum) {
    for (int i = 0; i < numberOfSets; i++) {
        if (L1[i][0].valid == 0) {
            L1[i][0].valid = 1;
            L1[i][0].setAddress = indexNum;
            if (islru == 1) {
                L1[i][0].time = 0;
            } else {
                L1[i][0].time = fifoCounter;
            }
            miss++;
            memRead++;
            for(int j = 0;j < 48; j++) {
                L1[i][0].tag[j] = binary[j];
            }
            return;
        }
        if (L1[i][0].setAddress == indexNum) {
            if (strcmp(L1[i][0].tag, binary) == 0) {
                if (islru == 1) {
                    L1[i][0].time = 0;
                }
                hit++;
                return;
            }
            miss++;
            memRead++;
            if (islru == 1) {
                lru(L1, i, binary);
                return;
            } else {
                fifo(L1, i, binary);
                return;
            }
        }
    }
}

void readFully(line L1[][Assoc], char binary[], int indexNum) {
    for (int i = 0; i < Assoc; i++) {
        if (L1[0][i].valid == 0) {
            L1[0][i].valid = 1;
            if (islru == 1) {
                L1[0][i].time = 0;
            } else {
                L1[0][i].time = fifoCounter;
            }
            miss++;
            memRead++;
            for(int j = 0; j < 48; j++) {
                L1[0][i].tag[j] = binary[j];
            }
            return;
        }
        if (strcmp(L1[0][i].tag, binary) == 0) {
            if (islru == 1) {
                L1[0][i].time = 0;
            }
            hit++;
            return;
        }
    }
    miss++;
    memRead++;
    if (islru == 1) {
        lru(L1, 0, binary);
        return;
    } else {
        fifo(L1, 0, binary);
        return;
    }
}

// read memory
void readToCache(line L1[][Assoc], char binary[], int blockSize) {
    int indexNum = getSetAddress(binary, blockSize, setIndexBits);
    if (indexNum == -1) {
        readFully(L1, binary, indexNum);
    } else if (Assoc == 1) {
        readDirect(L1, binary, indexNum);
    } else {
        readNotFully(L1, binary, indexNum);
    }
    updateTime(L1);
}

void writeFully(line L1[][Assoc], char binary[], int indexNum) {
    memWrite++;
    for (int i = 0; i < Assoc; i++) {
        if (strcmp(L1[0][i].tag, binary) == 0 && L1[0][i].valid == 1) {
            hit++;
            if (islru == 1) {
                L1[0][i].time = 0;
            }
            return;
        }
    }
    readFully(L1, binary, indexNum);
}

void writeDirect(line L1[][Assoc], char binary[], int indexNum) {
    memWrite++;
    for (int i = 0; i < numberOfSets; i++) {
        if (indexNum == L1[i][0].setAddress) {
            if (strcmp(L1[i][0].tag, binary) == 0) {
                hit++;
                if (islru == 1) {
                    L1[i][0].time = 0;
                }
                return;
            }
        }
    }
    readDirect(L1, binary, indexNum);
}

void writeNotFully(line L1[][Assoc], char binary[], int indexNum) {
    memWrite++;
    for (int i = 0; i < numberOfSets; i++) {
        if (indexNum == L1[i][0].setAddress) {
            for (int j = 0; j < Assoc; j++) {
                if (strcmp(L1[i][j].tag, binary) == 0) {
                    hit++;
                    if (islru == 1) {
                        L1[i][j].time = 0;
                    }
                    return;
                }
            }
        }
    }
    readNotFully(L1, binary, indexNum);
}

// write to memory
void writeToCache(line L1[][Assoc], char binary[], int blockSize) {
    int indexNum = getSetAddress(binary, blockSize, setIndexBits);
    if (indexNum == -1) {
        writeFully(L1, binary, indexNum);
    } else if (Assoc == 1) {
        writeDirect(L1, binary, indexNum);
    } else {
        writeNotFully(L1, binary, indexNum);
    }
    updateTime(L1);
}

// LRU removal
void lru(line L1[][Assoc], int currSet, char newTag[]) {
    if (Assoc == 1) {
        for (int i = 0; i < 48; i++) {
            L1[currSet][0].tag[i] = newTag[i];
        }
        return;
    }
    int tempNum = INT_MIN;
    int theAddy = 0;
    for(int i = 0; i < Assoc; i++) {
        if (L1[currSet][i].time > tempNum && L1[currSet][i].valid == 1) {
            tempNum = L1[currSet][i].time;
            theAddy = i;
        }
    }
    for(int y = 0; y < 48; y++) {
        L1[currSet][theAddy].tag[y] = newTag[y];
    }
    L1[currSet][theAddy].time = 0;
}

// FIFO removal
void fifo(line L1[][Assoc], int currSet, char newTag[]) {
    if (Assoc == 1) {
        for (int i = 0; i < 48; i++) {
            L1[currSet][0].tag[i] = newTag[i];
        }
        return;
    }
    int tempNum = INT_MAX;
    int theAddy = 0;
    for(int i = 0; i < Assoc; i++) {
        if (L1[currSet][i].time < tempNum && L1[currSet][i].valid == 1) {
            tempNum = L1[currSet][i].time;
            theAddy = i;
        }
    }
    for(int y = 0; y < 48; y++) {
        L1[currSet][theAddy].tag[y] = newTag[y];
    }
    L1[currSet][theAddy].time = fifoCounter;
}

// gets the number associated with the set index of an address
int getSetAddress(char binary[], int blockSize, int setIndexBits) {
    int lower = log2(blockSize);
    int i = 47;
    while(lower != 0) {
        binary[i] = 0;
        lower--;
        i--;
    }
    if (setIndexBits < 0) {
        return -1;
    }
    int exp = 0;
    int setIndexNum = 0;
    while (setIndexBits != 0) {
        if (binary[i] == '1') {
            setIndexNum += pow(2, exp);
        }
        exp++;
        setIndexBits--;
        //binary[i] = 0;
        i--;
    }
    return setIndexNum;
}

// converts hex into a binary string
void toBinary(char hex[], char binary[]) {
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
                break;
        }
    }
}

int main(int argc, char* argv[argc+1]) {

    if (argc != 6) {
        printf("error\n");
        return EXIT_SUCCESS;
    }

    if (access(argv[5], F_OK) == -1) {
        printf("error\n");
        return EXIT_SUCCESS;
    }

    short blockSize = atoi(argv[4]);
    short cacheSize = atoi(argv[1]);

    int okSizes = isPowerof2(cacheSize, blockSize);
    if (okSizes != 1) {
        printf("error\n");
        return EXIT_SUCCESS;
    }

    if (argv[2][0] == 'd') {
        Assoc = 1;
        numberOfSets = cacheSize/blockSize;
        setIndexBits = log2(numberOfSets);
    } else if (argv[2][5] != ':') {
        Assoc = cacheSize/blockSize;
        setIndexBits = -1;
        numberOfSets = 1;
    } else {
        Assoc = argv[2][6] - '0';
        numberOfSets = cacheSize/(Assoc*blockSize);
        setIndexBits = log2(numberOfSets);
    }

    // making the cache
    line L1[numberOfSets][Assoc];

    // setting each value in the cache to 0
    for (int i = 0; i < numberOfSets; i++) {
        for (int j = 0; j < Assoc; j++) {
            L1[i][j].setAddress = -1;
            for (int yes = 0; yes < 48; yes++) {
                L1[i][j].tag[yes] = 0;
            }
            L1[i][j].time = 0;
            L1[i][j].valid = 0;
        }
    }

    // checking for the replacement policy
    if (argv[3][0] == 'l') {
        islru = 1;
    }

    // setting the binary strings to 0
    for (int i = 0; i < 48; i++) {
        binary1[i] = 0;
        binary2[i] = 0;
    }

    FILE* fp = fopen(argv[5], "r");

    while (fscanf(fp, "%c %s\n", &RorW, hex) != EOF) {

        toBinary(hex, binary1);

        int hello = 0;
        while (binary1[hello]) {
            hello++;
        }
        if (hello != 48) {
            for (int i = 0; i < 48 - hello; i++) {
            binary2[i] = '0';
            }
        }

        strcat(binary2, binary1);

        if (RorW == 'R') {
            readToCache(L1, binary2, blockSize);
        } else {
            writeToCache(L1, binary2, blockSize);
        }

        for (int i = 0; i < 48; i++) {
            binary1[i] = 0;
            binary2[i] = 0;
        }
    }
    printf("memread:%d\nmemwrite:%d\ncachehit:%d\ncachemiss:%d\n", memRead, memWrite, hit, miss);

    fclose(fp);

    return EXIT_SUCCESS;
}