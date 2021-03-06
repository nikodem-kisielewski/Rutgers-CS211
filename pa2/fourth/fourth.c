#include<stdio.h>
#include<stdlib.h>
#include<string.h>

struct node {
    char* vertex;
    int deg;
    int visited;
    struct edge* edges;
};

struct edge {
    char* to;
    int weight;
    struct edge* next;
};

void dfs(struct node* g, struct edge* temp, char* startVertex, int size) {
    for (int i = 0; i < size; i++) {
        if (strcmp(g[i].vertex, startVertex) == 0) {
            g[i].visited = 1;
            temp = g[i].edges;
            printf("%s ", startVertex);
        }
    }

    while (temp != NULL) {
        startVertex = temp->to;
        for (int i = 0; i < size; i++) {
            if (strcmp(g[i].vertex, startVertex) == 0 && g[i].visited == 0) {
                dfs(g, temp, startVertex, size);
            }
        }
        temp = temp->next;
    }
}

struct node* createGraph(char* vertices[], int size) {
    struct node* g = malloc(sizeof(struct node[size]));
    for (int i = 0; i < size; i++) {
        g[i].vertex = vertices[i];
        g[i].deg = 0;
        g[i].visited = 0;
        g[i].edges = NULL;
    }
    return g;
}

void addEdges(struct node* g, struct edge* toNode, struct edge* temp, char* from, char* to, int size) {
    for (int i = 0; i < size; i++) {
        if (strcmp(g[i].vertex, from) == 0) {
            if (g[i].edges == NULL) {
                g[i].edges = toNode;
                g[i].deg += 1;
            } else {
                temp = g[i].edges;
                while (temp->next != NULL && (strcmp(temp->next->to, toNode->to) < 0)) {
                    temp = temp->next;
                }
                if (strcmp(temp->to, toNode->to) > 0) {
                    toNode->next = temp;
                    g[i].edges = toNode;
                } else {
                    toNode->next = temp->next;
                    temp->next = toNode;
                    g[i].deg += 1;
                }
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

int main(int argc, char* argv[argc + 1]) {

    FILE* fp1 = fopen(argv[1], "r");

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
        addEdges(graph, toNode, temp, from, to, size);
    }

    dfs(graph, temp, graph[0].vertex, size);
    for (int i = 0; i < size; i++) {
        if (graph[i].visited == 0) {
            dfs(graph, temp, graph[i].vertex, size);
        }
    }

    printf("\n");

    free(temp);
    for (int i = 0; i < size; i++) {
        free(vertices[i]);
    }
    free(vertices);
    freeGraph(graph, size);

    fclose(fp1);

    return EXIT_SUCCESS;
}