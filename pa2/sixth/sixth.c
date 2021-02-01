#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<limits.h>

struct node {
    char* vertex;
    int outDeg;
    int inDeg;
    int visited;
    int distance;
    struct edge* edges;
};

struct edge {
    char* to;
    int weight;
    struct edge* next;
};

struct queue {
    struct node items[100];
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

void enqueue(struct queue* q, struct node v) {
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

void dequeue(struct queue* q) {
    if (emptyQ(q)) {
        return;
    } else {
        q->front++;
        if (q->front > q->rear) {
            q->front = q->rear = -1;
        }
    }
}

void isCycle(struct node* g, struct edge* temp, struct edge* temp2, int size, int maybe) {
    for (int i = 0; i < size; i++) {
        temp = g[i].edges;
        for (int j = 0; j < size; j++) {
            while (temp != NULL) {
                temp2 = g[j].edges;
                if (strcmp(temp->to, g[j].vertex) == 0) {
                    while (temp2 != NULL) {
                        if (strcmp(temp->to, temp2->to) == 0) {
                            maybe = 1;
                            break;
                        }
                        temp2 = temp2->next;
                    }
                }
                temp = temp->next;
            }
        }
    }
}

void helpMe(char* vert, struct node* g, struct queue* q, struct edge* temp, int size) {
    for (int i = 0; i < size; i++) {
        if (strcmp(vert, g[i].vertex) == 0) {
            g[i].visited = 1;
        }
    }

    for (int i = 0; i < size; i++) {
        if (strcmp(vert, g[i].vertex) == 0) {
            temp = g[i].edges;
            while (temp != NULL) {
                for (int j = 0; j < size; j++) {
                    if (strcmp(g[j].vertex, temp->to) == 0) {
                        if (g[j].visited == 0) {
                            helpMe(g[j].vertex, g, q, temp, size);
                        }
                    }
                }
                temp = temp->next;
            }
        }
    }
    for (int i = 0; i < size; i ++) {
        if (strcmp(g[i].vertex, vert) == 0) {
            enqueue(q, g[i]);
    }
}
}

void imDying(struct node* g, struct queue* q, struct edge* temp, int size) {
    for (int i = 0; i < size; i++) {
        g[i].visited = 0;
    }
    for (int i = 0; i < size; i++) {
        if (g[i].visited == 0) {
            helpMe(g[i].vertex, g, q, temp, size);
        }
    }
}

void path(struct node* g, struct edge* temp, char* src, int size) {
    for (int i = 0; i < size; i++) {
        g[i].distance = INT_MAX;
    }

    for (int i = 0; i < size; i++) {
        if (strcmp(g[i].vertex, src) == 0) {
            g[i].distance = 0;
            if (g[i].outDeg == 0) {
                return;
            }
        }
    }

    for (int i = 0; i < size; i++) {
        if (strcmp(g[i].vertex, src) == 0) {
            break;
        }
        g[i].visited = 1;
    }

    for (int i = 0; i < size; i++) {
        temp = g[i].edges;
        while (temp != NULL) {
            for (int j = 0; j < size; j++) {
                if (strcmp(temp->to, g[j].vertex) == 0) {
                    if (g[j].visited == 0) {
                        if (g[i].distance != INT_MAX) {
                            g[j].distance = g[i].distance + temp->weight;
                            g[j].visited = 1;
                            break;
                        }
                    } else if (g[i].distance == INT_MAX) {
                        break;
                    } else {
                        if (g[j].distance > (g[i].distance + temp->weight)) {
                            g[j].distance = g[i].distance + temp->weight;
                            break;
                        }
                    }
                }
            }
            temp = temp->next;
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

struct node* createGraph(char* vertices[], int size) {
    struct node* g = malloc(sizeof(struct node[size]));
    for (int i = 0; i < size; i++) {
        g[i].vertex = vertices[i];
        g[i].inDeg = 0;
        g[i].outDeg = 0;
        g[i].visited = 0;
        g[i].edges = NULL;
    }
    return g;
}

void addEdges(struct node* g, struct edge* toNode, struct edge* temp, char* from, char* to, int size) {
    for (int i = 0; i < size; i++) {
        if (strcmp(g[i].vertex, to) == 0) {
            g[i].inDeg += 1;
        }
        if (strcmp(g[i].vertex, from) == 0) {
            g[i].outDeg += 1;
            if (g[i].edges == NULL) {
                g[i].edges = toNode;
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
                }
            }
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

    struct queue* nQ = makeQ();
    imDying(graph, nQ, temp, size);

    for (int i = 0; i < size; i++) {
       graph[size - i - 1] = nQ->items[i];
       dequeue(nQ);
    }
    
    struct edge* temp2 = malloc(sizeof(struct edge));
    int maybe = 0;
    isCycle(graph, temp, temp2, size, maybe);

    if (maybe == 0) {
        char src[21];
        while (fscanf(fp2, "%s\n", src) != EOF) {
            for (int i = 0; i < size; i++) {
                graph[i].visited = 0;
            }

            path(graph, temp, src, size);
            for (int i = 0; i < size; i++) {
                for (int j = 0; j < size; j++) {
                    if (strcmp(vertices[i], graph[j].vertex) == 0) {
                        char* yes = "INF";
                        if (graph[j].distance == INT_MAX) {
                            printf("%s %s\n", graph[j].vertex, yes);
                        } else {
                            printf("%s %d\n", graph[j].vertex, graph[j].distance);
                        }
                    }
                }
            }
            printf("\n");
        }
    } else {
        printf("CYCLE\n");
    }

    free(temp);
    free(temp2);

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