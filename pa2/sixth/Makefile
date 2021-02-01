all : sixth

sixth : sixth.c
	gcc -Wall -Werror -fsanitize=address -std=c11 sixth.c -o sixth

clean :
	rm -f sixth