#include<stdlib.h>
#include<stdio.h>
#include<unistd.h>

struct node {
    int num;
    struct node* next;
};

void traverse();

struct node* head = 0;

void enqueue(int n) {
    struct node *temp, *nextnode;
    if (head == 0) {
        head = calloc(1, sizeof(struct node));
        head->num = n;
        traverse();
        return;
    }

    temp = calloc(1, sizeof(struct node));
    temp->num = n;
    temp->next = NULL;
    nextnode = head;
    while (nextnode->next != NULL) {
        nextnode = nextnode->next;
    }
    nextnode->next = temp;
    traverse();
}


void push(int n) {
    struct node *temp;
    if (head == 0) {
        head = calloc(1, sizeof(struct node));
        head->num = n;
        traverse();
        return;
    }

    temp = head;
    head = calloc(1, sizeof(struct node));
    head->num = n;
    head->next = temp;
    traverse();
}


void pop() {
    if (head == NULL) {
        traverse();
        return;
    }
    
    struct node *temp;
    temp = head->next;
    free(head);
    head = temp;
    traverse();
    return;

}

void traverse() {
    struct node* temp;
    if (head == 0) {
        printf("EMPTY");
        printf("\n");
        return;
    }
    temp = head;
    while (temp != NULL) {
        printf("%d ", temp->num);
        temp = temp->next;
    }
    printf("\n");
}

void freeLL(struct node* t) {
    if (t == 0) {
        return;
    }
    freeLL(t->next);
    free(t);
    return;
}

int main(int argc, char* argv[argc+1]) {
    if (argc != 2) {
        printf("error\n");
        return EXIT_SUCCESS;
    }

    if (access(argv[1], F_OK) == -1) {
        printf("error");
        return EXIT_SUCCESS;
    }

    FILE* fp = fopen(argv[1], "r");

    char function[10];
    int key;

    while (fscanf(fp, "%s %d", function, &key) != EOF) {
        if (function[0] == 'E') {
            enqueue(key);
        } else if (function[0] == 'P' && function[1] == 'U') {
            push(key);
        } else {
            pop();
        }
    }

    fclose(fp);

    freeLL(head);

    return EXIT_SUCCESS;
}
