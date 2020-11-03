NAME = libasm.a

ACC = nasm
CC = gcc
FLAGS = #-Wall -Wextra -Werror

SRC = ft_strlen.s ft_strcmp.s ft_strcpy.s ft_write.s ft_read.s ft_strdup.s
OBJ = $(SRC:.s=.o)

all: $(NAME)

%.o: %.s
	$(ACC) -fmacho64 $<

$(NAME): $(OBJ) libasm.h
	ar rc $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	rm -f test.out
	rm -f out*

re: fclean all

run: re
	$(CC) $(FLAGS) main.c -I. -L. -lasm -o test.out
	./test.out

.PHONY: all clean fclean re run
