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
    struct edge* next;
};

struct queue {
    char* items[100];
    int front;
    int rear;
};

struct queue* makeQ() {
    struct queue* q = malloc(sizeof(struct queue));
    q->front = -1;
    q->rear = -1;
    return q;
}

int emptyQ(struct queue* q) {
    if (q->rear == -1) {
        return 1;
    }
    return 0;
}

void enqueue(struct queue* q, char* v) {
    if (q->rear == 99) {
        printf("Queue is full\n");
    } else {
        if (q->front == -1) {
            q->front = 0;
        }
        q->rear++;
        q->items[q->rear] = v;
    }
}

char* dequeue(struct queue* q) {
    char* item;
    if (emptyQ(q)) {
        return 0;
    } else {
        item = q->items[q->front];
        q->front++;
        if (q->front > q->rear) {
            q->front = q->rear = -1;
        }
    }
    return item;
}

void bfs(struct node* g, char* startVertex, struct queue* q, int size) {
    for (int i = 0; i < size; i++) {
        g[i].visited = 0;
    }

    for (int i = 0; i < size; i++) {
        if (strcmp(g[i].vertex, startVertex) == 0) {
            g[i].visited = 1;
        }
    }

    printf("%s ", startVertex);
    
    enqueue(q, startVertex);

    while (emptyQ(q) == 0) {
        char* currentVertex = dequeue(q);

        int i = 0;
        while (strcmp(g[i].vertex, currentVertex) != 0) {
            i++;
        }
    
        struct edge* temp = g[i].edges;

        while (temp != NULL) {
            char* adjVertex = temp->to;
            for (int j = 0; j < size; j++) {
                if ((strcmp(g[j].vertex, adjVertex) == 0) && (g[j].visited == 0)) {
                    enqueue(q, adjVertex);
                    printf("%s ", adjVertex);
                    g[j].visited = 1;
                }
            }
            temp = temp->next;
        }
    }
    printf("\n");
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

void addEdges(struct node* g, struct edge* fromNode, struct edge* toNode, struct edge* temp, char* from, char* to, int size) {
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
        if (strcmp(g[i].vertex, to) == 0) {
            if (g[i].edges == NULL) {
                g[i].edges = fromNode;
                g[i].deg += 1;
            } else {
                temp = g[i].edges;
                while (temp->next != NULL && (strcmp(temp->next->to, fromNode->to) < 0)) {
                    temp = temp->next;
                }
                if (strcmp(temp->to, fromNode->to) > 0) {
                    fromNode->next = temp;
                    g[i].edges = fromNode;
                } else {
                    fromNode->next = temp->next;
                    temp->next = fromNode;
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
    struct edge* temp = malloc(sizeof(struct edge*));
    while (fscanf(fp1, "%s %s\n", from, to) != EOF) {
        struct edge* toNode = malloc(sizeof(struct edge));
        struct edge* fromNode = malloc(sizeof(struct edge));
        toNode->to = malloc(strlen(to)+1);
        strcpy(toNode->to, to);
        toNode->next = NULL;
        fromNode->to = malloc(strlen(from)+1);
        strcpy(fromNode->to, from);
        fromNode->next = NULL;
        addEdges(graph, fromNode, toNode, temp, from, to, size);
    }

    char start[21];
    struct queue* nQ = makeQ();
    while (fscanf(fp2, "%s\n", start) != EOF) {
        bfs(graph, start, nQ, size);
    }

    free(temp);
    for (int i = 0; i < size; i++) {
        free(vertices[i]);
    }
    free(vertices);
    freeGraph(graph, size);
    free(nQ);

    fclose(fp1);
    fclose(fp2);

    return EXIT_SUCCESS;
}