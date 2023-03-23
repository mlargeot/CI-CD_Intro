##
## EPITECH PROJECT, 2022
## Minishell1
## File description:
## Makefile
##

SRC	=    

MAIN	= main.c

INCLUDE	=

NAME	= test

CFLAGS = $(INCLUDE:%=-I%) -g

OBJ	=	$(SRC:.c=.o)

OBM =	$(MAIN:.c=.o)

all:	$(NAME)

$(NAME):	$(OBJ) $(OBM)
	gcc -o $(NAME) $(OBJ) $(OBM)

clean:
	rm -f $(OBJ) $(OBM)

fclean:	clean
	rm -f $(NAME)

re: fclean all

tests_run:

.SILENT:

.PHONY: all clean fclean re
