#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<math.h>
#include<unistd.h>
#include<limits.h>

int L1islru = 0;
int L2islru = 0;
int fifoCounter = 1;
int L1Assoc = 0;
int L2Assoc = 0;
int L1numberOfSets = 0;
int L2numberOfSets = 0;
int L1setIndexBits = 0;
int L2setIndexBits = 0;
int memRead = 0;
int memWrite = 0;
int L1hit = 0;
int L1miss = 0;
int L2hit = 0;
int L2miss = 0;
short blockSize = 0;
short L1cacheSize = 0;
short L2cacheSize = 0;
char hex[16], binary1[48], binary2[48], RorW;

typedef struct {
    int time;
    int setAddress;
    short valid;
    char tag[48];
} line;

int getSetAddress(char binary[], int blockSize, int setIndexBits);
void lru(line L1[][L1Assoc], int currSet, char tempTag[], char thisTag[]);
void fifo(line L1[][L1Assoc], int currSet, char tempTag[], char thisTag[]);
void lru2(line L2[][L2Assoc], int currSet, char newTag[]);
void fifo2(line L2[][L2Assoc], int currSet, char newTag[]);

void updateTime(line L1[][L1Assoc], line L2[][L2Assoc]) {
    if (L1islru == 1) {
        for(int i = 0; i < L1numberOfSets; i++) {
            if (L1Assoc == 1 && L1[i][0].valid == 1) {
                L1[i][0].time++;
            } else if (L1numberOfSets == 1 && L1[0][i].valid == 1) {
                for (int z = 0; z < L1Assoc; z++) {
                    L1[0][z].time++;
                }
            } else {
                for (int j = 0; j < L1Assoc; j++) {
                    if (L1[i][j].valid == 1) {
                        L1[i][j].time++;
                    }
                }
            }
        }
    }
    if (L2islru == 1) {
        for(int i = 0; i < L2numberOfSets; i++) {
            if (L2Assoc == 1 && L2[i][0].valid == 1) {
                L2[i][0].time++;
            } else if (L2numberOfSets == 1 && L2[0][i].valid == 1) {
                for (int z = 0; z < L2Assoc; z++) {
                    L2[0][z].time++;
                }
            } else {
                for (int j = 0; j < L2Assoc; j++) {
                    if (L2[i][j].valid == 1) {
                        L2[i][j].time++;
                    }
                }
            }
        }
    }
    fifoCounter++;
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

void checkL2(line L2[][L2Assoc], char binary[]) {
    if (L2Assoc == 1) {
        for (int i = 0; i < L2numberOfSets; i++) {
            if (L2[i][0].valid == 1) {
                if (strcmp(L2[i][0].tag, binary) == 0) {
                    L2[i][0].valid = 0;
                    L2hit++;
                    return;
                }
            }
        }
    }
    if (L2setIndexBits == -1) {
        for (int i = 0; i < L2Assoc; i++) {
            if (L2[0][i].valid == 1) {
                if (strcmp(L2[0][i].tag, binary) == 0) {
                    L2[0][i].valid = 0;
                    L2hit++;
                    return;
                }
            }
        }
    }
    for (int i = 0; i < L2numberOfSets; i++) {
        for (int j = 0; j < L2Assoc; j++) {
            if (L2[i][j].valid == 1) {
                if (strcmp(L2[i][j].tag, binary) == 0) {
                    L2[i][j].valid = 0;
                    L2hit++;
                    return;
                }
            }
        }
    }
    L2miss++;
    memRead++;
    return;
}

void L2notFully(line L2[][L2Assoc], char binary[], int indexNum) {
    for (int i = 0; i < L2numberOfSets; i++) {
        if (L2[i][0].setAddress == indexNum && L2[i][0].valid == 1) {
            for (int j = 0; j < L2Assoc; j++) {
                if (L2[i][j].valid == 0) {
                    L2[i][j].valid = 1;
                    if (L2islru == 1) {
                        L2[i][j].time = 0;
                    } else {
                        L2[i][j].time = fifoCounter;
                    }
                    for(int x = 0; x < 48; x++) {
                        L2[i][j].tag[x] = binary[x];
                    }
                    return;
                }
            }
            if (L2islru == 1) {
                lru2(L2, i, binary);
                return;
            } else {
                fifo2(L2, i, binary);
                return;
            }
        }
    }
    for (int i = 0; i < L2numberOfSets; i++) {
        if (L2[i][0].valid == 0) {
            L2[i][0].setAddress = indexNum;
            L2[i][0].valid = 1;
            if (L2islru == 1) {
                L2[i][0].time = 0;
            } else {
                L2[i][0].time = fifoCounter;
            }
            for (int a = 0; a < 48; a++) {
                L2[i][0].tag[a] = binary[a];
            }
            return;
        }
    }
}

void L2direct(line L2[][L2Assoc], char binary[], int indexNum) {
    for (int i = 0; i < L2numberOfSets; i++) {
        if (L2[i][0].setAddress == indexNum && L2[i][0].valid == 1) {
            if (L2islru == 1) {
                lru2(L2, i, binary);
                 return;
            } else {
                fifo2(L2, i, binary);
                return;
            }
        }
    }
    for (int i = 0; i < L2numberOfSets; i++) {
        if (L2[i][0].valid == 0) {
            L2[i][0].valid = 1;
            L2[i][0].setAddress = indexNum;
            if (L2islru == 1) {
                L2[i][0].time = 0;
            } else {
                L2[i][0].time = fifoCounter;
            }
            for(int j = 0; j < 48; j++) {
                L2[i][0].tag[j] = binary[j];
            }
            return;
        }
    }
}

void L2fully(line L2[][L2Assoc], char binary[]) {
    for (int i = 0; i < L2Assoc; i++) {
        if (L2[0][i].valid == 0) {
            L2[0][i].valid = 1;
            if (L2islru == 1) {
                L2[0][i].time = 0;
            } else {
                L2[0][i].time = fifoCounter;
            }
            for(int j = 0; binary[j] != 0; j++) {
                L2[0][i].tag[j] = binary[j];
            }
            return;
        }
    }
    if (L2islru == 1) {
        lru2(L2, 0, binary);
        return;
    } else {
        fifo2(L2, 0, binary);
        return;
    }
}

void readNotFully(line L1[][L1Assoc], line L2[][L2Assoc], char binary[], char tempTag[], int indexNum) {
    for (int i = 0; i < L1numberOfSets; i++) {
        if (L1[i][0].setAddress == indexNum) {
            for (int j = 0; j < L1Assoc; j++) {
                if (strcmp(L1[i][j].tag, binary) == 0 && L1[i][j].valid == 1) {
                    if (L1islru == 1) {
                        L1[i][j].time = 0;
                    }
                    L1hit++;
                    return;
                }
            }
            for (int j = 0; j < L1Assoc; j++) {
                if (L1[i][j].valid == 0) {
                    L1miss++;
                    checkL2(L2, binary);
                    L1[i][j].valid = 1;
                    if (L1islru == 1) {
                        L1[i][j].time = 0;
                    } else {
                        L1[i][j].time = fifoCounter;
                    }
                    for(int x = 0; x < 48; x++) {
                        L1[i][j].tag[x] = binary[x];
                    }
                    return;
                }
            }
            L1miss++;
            checkL2(L2, binary);
            if (L1islru == 1) {
                lru(L1, i, tempTag, binary);
                int L2setIndexNum = getSetAddress(tempTag, blockSize, L2setIndexBits);
                if (L2Assoc == 1) {
                    L2direct(L2, tempTag, L2setIndexNum);
                } else if (L2setIndexNum == -1) {
                    L2fully(L2, tempTag);
                } else {
                    L2notFully(L2, tempTag, L2setIndexNum);
                }
                return;
            } else {
                fifo(L1, i, tempTag, binary);
                int L2setIndexNum = getSetAddress(tempTag, blockSize, L2setIndexBits);
                if (L2Assoc == 1) {
                    L2direct(L2, tempTag, L2setIndexNum);
                } else if (L2setIndexNum == -1) {
                    L2fully(L2, tempTag);
                } else {
                    L2notFully(L2, tempTag, L2setIndexNum);
                }
                return;
            }
        }
    }
    for (int i = 0; i < L1numberOfSets; i++) {
        if (L1[i][0].valid == 0) {
            L1miss++;
            checkL2(L2, binary);
            L1[i][0].setAddress = indexNum;
            L1[i][0].valid = 1;
            if (L1islru == 1) {
                L1[i][0].time = 0;
            } else {
                L1[i][0].time = fifoCounter;
            }
            for (int a = 0; a < 48; a++) {
                L1[i][0].tag[a] = binary[a];
            }
            return;
        }
    }
}

void readDirect(line L1[][L1Assoc], line L2[][L2Assoc], char binary[], char tempTag[], int indexNum) {
    for (int i = 0; i < L1numberOfSets; i++) {
        if (L1[i][0].valid == 0) {
            L1[i][0].valid = 1;
            L1[i][0].setAddress = indexNum;
            if (L1islru == 1) {
                L1[i][0].time = 0;
            } else {
                L1[i][0].time = fifoCounter;
            }
            L1miss++;
            checkL2(L2, binary);
            for(int j = 0; binary[j] != 0; j++) {
                L1[i][0].tag[j] = binary[j];
            }
            return;
        }
        if (L1[i][0].setAddress == indexNum) {
            if (strcmp(L1[i][0].tag, binary) == 0) {
                if (L1islru == 1) {
                    L1[i][0].time = 0;
                }
                L1hit++;
                return;
            }
            L1miss++;
            checkL2(L2, binary);
            if (L1islru == 1) {
                lru(L1, i, tempTag, binary);
                int L2setIndexNum = getSetAddress(tempTag, blockSize, L2setIndexBits);
                if (L2Assoc == 1) {
                    L2direct(L2, tempTag, L2setIndexNum);
                } else if (L2setIndexNum == -1) {
                    L2fully(L2, tempTag);
                } else {
                    L2notFully(L2, tempTag, L2setIndexNum);
                }
                return;
            } else {
                fifo(L1, i, tempTag, binary);
                int L2setIndexNum = getSetAddress(tempTag, blockSize, L2setIndexBits);
                if (L2Assoc == 1) {
                    L2direct(L2, tempTag, L2setIndexNum);
                } else if (L2setIndexNum == -1) {
                    L2fully(L2, tempTag);
                } else {
                    L2notFully(L2, tempTag, L2setIndexNum);
                }
                return;
            }
        }
    }
}

void readFully(line L1[][L1Assoc], line L2[][L2Assoc], char binary[], char tempTag[], int indexNum) {
    for (int i = 0; i < L1Assoc; i++) {
        if (L1[0][i].valid == 0) {
            L1[0][i].valid = 1;
            if (L1islru == 1) {
                L1[0][i].time = 0;
            } else {
                L1[0][i].time = fifoCounter;
            }
            L1miss++;
            checkL2(L2, binary);
            for(int j = 0; binary[j] != 0; j++) {
                L1[0][i].tag[j] = binary[j];
            }
            return;
        }
        if (strcmp(L1[0][i].tag, binary) == 0) {
            if (L1islru == 1) {
                L1[0][i].time = 0;
            }
            L1hit++;
            return;
        }
    }
    L1miss++;
    checkL2(L2, binary);
    if (L1islru == 1) {
        lru(L1, 0, tempTag, binary);
        int L2setIndexNum = getSetAddress(tempTag, blockSize, L2setIndexBits);
        if (L2Assoc == 1) {
            L2direct(L2, tempTag, L2setIndexNum);
        } else if (L2setIndexNum == -1) {
            L2fully(L2, tempTag);
        } else {
            L2notFully(L2, tempTag, L2setIndexNum);
        }
        return;
    } else {
        fifo(L1, 0, tempTag, binary);
        int L2setIndexNum = getSetAddress(tempTag, blockSize, L2setIndexBits);
        if (L2Assoc == 1) {
            L2direct(L2, tempTag, L2setIndexNum);
        } else if (L2setIndexNum == -1) {
            L2fully(L2, tempTag);
        } else {
            L2notFully(L2, tempTag, L2setIndexNum);
        }
        return;
    }
}

// read memory
void readToCache(line L1[][L1Assoc], line L2[][L2Assoc], char binary[], char tempTag[], int blockSize) {
    int indexNum = getSetAddress(binary, blockSize, L1setIndexBits);
    if (indexNum == -1) {
        readFully(L1, L2, binary, tempTag, indexNum);
    } else if (L1Assoc == 1) {
        readDirect(L1, L2, binary, tempTag, indexNum);
    } else {
        readNotFully(L1, L2, binary, tempTag, indexNum);
    }
}

void writeFully(line L1[][L1Assoc], line L2[][L2Assoc], char binary[], char tempTag[], int indexNum) {
    memWrite++;
    for (int i = 0; i < L1Assoc; i++) {
        if (strcmp(L1[0][i].tag, binary) == 0 && L1[0][i].valid == 1) {
            L1hit++;
            return;
        }
    }
    readFully(L1, L2, binary, tempTag, indexNum);
}

void writeDirect(line L1[][L1Assoc], line L2[][L2Assoc], char binary[], char tempTag[], int indexNum) {
    memWrite++;
    for (int i = 0; i < L1numberOfSets; i++) {
        if (indexNum == L1[i][0].setAddress) {
            if (strcmp(L1[i][0].tag, binary) == 0) {
                L1hit++;
                return;
            }
        }
    }
    readDirect(L1, L2, binary, tempTag, indexNum);
}

void writeNotFully(line L1[][L1Assoc], line L2[][L2Assoc], char binary[], char tempTag[], int indexNum) {
    memWrite++;
    for (int i = 0; i < L1numberOfSets; i++) {
        if (indexNum == L1[i][0].setAddress) {
            for (int j = 0; j < L1Assoc; j++) {
                if (strcmp(L1[i][j].tag, binary) == 0) {
                    L1hit++;
                    return;
                }
            }
        }
    }
    readNotFully(L1, L2, binary, tempTag, indexNum);
}

// write to memory
void writeToCache(line L1[][L1Assoc], line L2[][L2Assoc], char binary[], char tempTag[], int blockSize) {
    int indexNum = getSetAddress(binary, blockSize, L1setIndexBits);
    if (indexNum == -1) {
        writeFully(L1, L2, binary, tempTag, indexNum);
    } else if (L1Assoc == 1) {
        writeDirect(L1, L2, binary, tempTag, indexNum);
    } else {
        writeNotFully(L1, L2, binary, tempTag, indexNum);
    }
}

// LRU removal
void lru2(line L2[][L2Assoc], int currSet, char newTag[]) {
    if (L2Assoc == 1) {
        for (int i = 0; i < 48; i++) {
            L2[currSet][0].tag[i] = newTag[i];
        }
        return;
    }
    int tempNum = INT_MIN;
    int theAddy = 0;
    for(int i = 0; i < L2Assoc; i++) {
        if (L2[currSet][i].time > tempNum && L2[currSet][i].valid == 1) {
            tempNum = L2[currSet][i].time;
            theAddy = i;
        }
    }
    for(int y = 0; y < 48; y++) {
        L2[currSet][theAddy].tag[y] = newTag[y];
    }
    L2[currSet][theAddy].time = 0;
}

// FIFO removal
void fifo2(line L2[][L2Assoc], int currSet, char newTag[]) {
    if (L2Assoc == 1) {
        for (int i = 0; i < 48; i++) {
            L2[currSet][0].tag[i] = newTag[i];
        }
        return;
    }
    int tempNum = INT_MAX;
    int theAddy = 0;
    for(int i = 0; i < L2Assoc; i++) {
        if (L2[currSet][i].time < tempNum && L2[currSet][i].valid == 1) {
            tempNum = L2[currSet][i].time;
            theAddy = i;
        }
    }
    for(int y = 0; y < 48; y++) {
        L2[currSet][theAddy].tag[y] = newTag[y];
    }
    L2[currSet][theAddy].time = fifoCounter;
}

// LRU removal
void lru(line L1[][L1Assoc], int currSet, char tempTag[], char newTag[]) {
    if (L1Assoc == 1) {
        for (int i = 0; i < 48; i++) {
            tempTag[i] = L1[currSet][0].tag[i];
            L1[currSet][0].tag[i] = newTag[i];
        }

        return;
    }
    int tempNum = INT_MIN;
    int theAddy = 0;
    for(int i = 0; i < L1Assoc; i++) {
        if (L1[currSet][i].time > tempNum && L1[currSet][i].valid == 1) {
            tempNum = L1[currSet][i].time;
            theAddy = i;
        }
    }
    for(int y = 0; y < 48; y++) {
        tempTag[y] = L1[currSet][theAddy].tag[y];
        L1[currSet][theAddy].tag[y] = newTag[y];
    }
    L1[currSet][theAddy].time = 0;
}

// FIFO removal
void fifo(line L1[][L1Assoc], int currSet, char tempTag[], char newTag[]) {
    if (L1Assoc == 1) {
        for (int i = 0; i < 48; i++) {
            tempTag[i] = L1[currSet][0].tag[i];
            L1[currSet][0].tag[i] = newTag[i];
        }
        return;
    }
    int tempNum = INT_MAX;
    int theAddy = 0;
    for(int i = 0; i < L1Assoc; i++) {
        if (L1[currSet][i].time < tempNum && L1[currSet][i].valid == 1) {
            tempNum = L1[currSet][i].time;
            theAddy = i;
        }
    }
    for(int y = 0; y < 48; y++) {
        tempTag[y] = L1[currSet][theAddy].tag[y];
        L1[currSet][theAddy].tag[y] = newTag[y];
    }
    L1[currSet][theAddy].time = fifoCounter;
}

void removeLower(char binary[], int blockSize) {
    int lower = log2(blockSize);
    int i = 47;
    while(lower != 0) {
        binary[i] = 0;
        lower--;
        i--;
    }
}

// gets the number associated with the set index of an address
int getSetAddress(char binary[], int blockSize, int setIndexBits) {
    int lower = log2(blockSize);
    int i = 47;
    while(lower != 0) {
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

    if (argc != 9) {
        printf("error\n");
        return EXIT_SUCCESS;
    }

    if (access(argv[8], F_OK) == -1) {
        printf("error\n");
        return EXIT_SUCCESS;
    }

    blockSize = atoi(argv[4]);
    L1cacheSize = atoi(argv[1]);
    L2cacheSize = atoi(argv[5]);

    int L1Sizes = isPowerof2(L1cacheSize, blockSize);
    int L2Sizes = isPowerof2(L2cacheSize, blockSize);
    if (L1Sizes != 1 || L2Sizes != 1) {
        printf("error\n");
        return EXIT_SUCCESS;
    }

    if (argv[2][0] == 'd') {
        L1Assoc = 1;
        L1numberOfSets = L1cacheSize/blockSize;
        L1setIndexBits = log2(L1numberOfSets);
    } else if (argv[2][5] != ':') {
        L1Assoc = L1cacheSize/blockSize;
        L1setIndexBits = -1;
        L1numberOfSets = 1;
    } else {
        L1Assoc = argv[2][6] - '0';
        L1numberOfSets = L1cacheSize/(L1Assoc*blockSize);
        L1setIndexBits = log2(L1numberOfSets);
    }

    if (argv[6][0] == 'd') {
        L2Assoc = 1;
        L2numberOfSets = L2cacheSize/blockSize;
        L2setIndexBits = log2(L2numberOfSets);
    } else if (argv[6][5] != ':') {
        L2Assoc = L2cacheSize/blockSize;
        L2setIndexBits = -1;
        L2numberOfSets = 1;
    } else {
        L2Assoc = argv[6][6] - '0';
        L2numberOfSets = L2cacheSize/(L2Assoc*blockSize);
        L2setIndexBits = log2(L2numberOfSets);
    }

    // making the cache
    line L1[L1numberOfSets][L1Assoc];
    line L2[L2numberOfSets][L2Assoc];

    // setting each value in the cache to 0
    for (int i = 0; i < L1numberOfSets; i++) {
        for (int j = 0; j < L1Assoc; j++) {
            L1[i][j].setAddress = -1;
            for (int yes = 0; yes < 48; yes++) {
                L1[i][j].tag[yes] = 0;
            }
            L1[i][j].time = 0;
            L1[i][j].valid = 0;
        }
    }
    for (int i = 0; i < L2numberOfSets; i++) {
        for (int j = 0; j < L2Assoc; j++) {
            L2[i][j].setAddress = -1;
            for (int yes = 0; yes < 48; yes++) {
                L2[i][j].tag[yes] = 0;
            }
            L2[i][j].time = 0;
            L2[i][j].valid = 0;
        }
    }

    // checking for the replacement policy
    if (argv[3][0] == 'l') {
        L1islru = 1;
    }
    if (argv[7][0] == 'l') {
        L2islru = 1;
    }

    // setting the binary strings to 0
    for (int i = 0; i < 48; i++) {
        binary1[i] = 0;
        binary2[i] = 0;
    }

    FILE* fp = fopen(argv[8], "r");

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
        removeLower(binary2, blockSize);
        for (int i = 0; i < 48; i++) {
            binary1[i] = binary2[i];
        }

        if (RorW == 'R') {
            readToCache(L1, L2, binary2, binary1, blockSize);
        } else {
            writeToCache(L1, L2, binary2, binary1, blockSize);
        }

        for (int i = 0; i < 48; i++) {
            binary1[i] = 0;
            binary2[i] = 0;
        }
        updateTime(L1, L2);
    }
    printf("memread:%d\nmemwrite:%d\nl1cachehit:%d\nl1cachemiss:%d\n", memRead, memWrite, L1hit, L1miss);
    printf("l2cachehit:%d\nl2cachemiss:%d\n", L2hit, L2miss);

    fclose(fp);

    return EXIT_SUCCESS;
}