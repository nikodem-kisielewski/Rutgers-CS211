#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>

struct node {
    int num;
    struct node* next;
};

void traverse();

struct node* head = 0;

void freeLL(struct node* t) {
    if (t == 0) {
        return;
    }
    freeLL(t->next);
    free(t);
    return;
}

void insert(int n) {
    if (head == 0) {
        head = calloc(1, sizeof(struct node));
        head->num = n;
        head->next = NULL;
        traverse();
        return;
    }
    struct node *temp, *newnode, *prevnode, *nextnode;
    temp = head;
    while (temp != NULL) {
        if (temp->num == n) {
	    traverse();
            return;
        }
        temp = temp->next;
    }
    newnode = calloc(1, sizeof(struct node));
    newnode->num = n;
    newnode->next = NULL;
    prevnode = NULL;
    nextnode = head;
    while (nextnode != NULL && nextnode->num < n) {
        prevnode = nextnode;
        nextnode = nextnode->next;
    }
    if (nextnode == NULL) {
        prevnode->next = newnode;
    } else {
        if (prevnode) {
            newnode->next = prevnode->next;
            prevnode->next = newnode;
        } else {
            newnode->next = head;
            head = newnode;
        }
    }
    traverse();
}

void delete(int n) {
    if (head == 0) {
        return;
    }
    struct node  *prevnode, *temp;
    temp = head;
    prevnode = NULL;
    if (temp != NULL && temp->num == n) {
        head = temp->next;
        free(temp);
        traverse();
        return;
    }
    while (temp != NULL && temp->num != n) {
        prevnode = temp;
        temp = temp->next;
    }
    if (temp == NULL) {
	traverse();
        return;
    }
    prevnode->next = temp->next;
    free(temp);
    traverse();
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
        if (function[0] == 'I') {
            insert(key);
        } else {
            delete(key);
        }
    }

    fclose(fp);

    freeLL(head);

    return EXIT_SUCCESS;
}
