#include<stdio.h>
#include<stdlib.h>
#include<string.h>

struct node {
    char* vertex;
    int deg;
    struct edge* edges;
};

struct edge {
    char* to;
    int weight;
    struct edge* next;
};

struct node* createGraph(char* vertices[], int size) {
    struct node* g = malloc(sizeof(struct node[size]));
    for (int i = 0; i < size; i++) {
        g[i].vertex = vertices[i];
        g[i].deg = 0;
        g[i].edges = NULL;
    }
    return g;
}

void addEdges(struct node* g, struct edge* toNode, char* from, struct edge* temp, char* to, int size) {
    for (int i = 0; i < size; i++) {
        if (strcmp(g[i].vertex, from) == 0) {
            if (g[i].edges == NULL) {
                g[i].edges = toNode;
                g[i].deg += 1;
            } else {
                temp = g[i].edges;
                toNode->next = temp;
                g[i].edges = toNode;
                g[i].deg += 1;
            }
        }
    }
}

void degree(struct node* g, char* vertex, int size) {
    for (int i = 0; i < size; i++) {
        if (strcmp(g[i].vertex, vertex) == 0) {
            printf("%d\n", g[i].deg);
        }
    }
}

// Function to sort the array 
void sort(char* arr[], int size, char temp[]) { 
    for (int i = 0; i < size-1; i++) {
        if (strcmp(arr[i], arr[i+1]) > 0) {
            temp = arr[i];
            arr[i] = arr[i+1];
            arr[i+1] = temp;
            i = -1;
        }
    }
}

void freeEdges(struct edge* e) {
    struct edge* temp;
    while (e != NULL) {
        temp = e;
        e = e->next;
        free(temp->to);
        free(temp);
    }
}

void freeGraph(struct node* g, int size) {
    for (int i = 0; i < size; i++) {
        freeEdges(g[i].edges);
    }
    free(g);
}

void second(FILE* fp2, struct node* graph, int size) {
    char f; 
    char v[21];
    while (fscanf(fp2, "%c %s\n", &f, v) != EOF) {
        if (f == 'o') {
            degree(graph, v, size);
        }
        if (f == 'i') {
            int c1 = 0;
            for (int i = 0; i < size; i++) {
                struct edge* temp = graph[i].edges;
                int c2 = 0;
                while (c2 < graph[i].deg) {
                    if (strcmp(temp->to, v) == 0) {
                        c1 += 1;
                    }
                    temp = temp->next;
                    c2++;
                }
            }
            printf("%d\n", c1);
        }
        if (f == 'a') {
            for (int i = 0; i < size; i++) {
                if (strcmp(graph[i].vertex, v) == 0) {
                    char** huh = malloc(graph[i].deg*sizeof(char*));
                    int counter = 0;
                    struct edge* temp = graph[i].edges;
                    while (counter < graph[i].deg) {
                        huh[counter] = temp->to;
                        temp = temp->next;
                        counter++;
                    }
                    char cT[21];
                    sort(huh, graph[i].deg, cT);
                    for (int i = 0; i < counter; i++) {
                        printf("%s ", huh[i]);
                    }
                    free(huh);
                }
            }
            printf("\n");
        }
    }
}

int main(int argc, char* argv[argc + 1]) {

    FILE* fp1 = fopen(argv[1], "r");
    FILE* fp2 = fopen(argv[2], "r");

    // reading the amount of vertices
    int size;
    fscanf(fp1, "%d\n", &size);

    char** vertices = malloc(size*sizeof(char*));
    
    // making an array to store names of vertices
    for (int i = 0; i < size; i++) {
        char* vertex = malloc(sizeof(char*));
        fscanf(fp1, "%s\n", vertex);
        vertices[i] = vertex;
    }

    char cTemp[21];
    sort(vertices, size, cTemp);
    struct node* graph = createGraph(vertices, size);

    char from[21];
    char to[21];
    int weight;
    struct edge* temp = malloc(sizeof(struct edge*));
    while (fscanf(fp1, "%s %s %d\n", from, to, &weight) != EOF) {
        struct edge* toNode = malloc(sizeof(struct edge));
        toNode->to = malloc(strlen(to)+1);
        strcpy(toNode->to, to);
        toNode->next = NULL;
        toNode->weight = weight;
        addEdges(graph, toNode, from, temp, to, size);
    }

    second(fp2, graph, size);

    free(temp);
    for (int i = 0; i < size; i++) {
        free(vertices[i]);
    }
    free(vertices);
    freeGraph(graph, size);

    fclose(fp1);
    fclose(fp2);

    return EXIT_SUCCESS;
}