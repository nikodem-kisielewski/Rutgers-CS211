all : fifth

fifth : fifth.c
	gcc -Wall -Werror -fsanitize=address -std=c11 fifth.c -o fifth -lm

clean :
	rm -f fifth