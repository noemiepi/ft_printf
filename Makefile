# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: npillet <npillet@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/11/03 13:00:47 by npillet           #+#    #+#              #
#    Updated: 2025/11/19 10:35:17 by npillet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Werror -Wextra -g

SRC = ft_printf.c \
		ft_checkformat.c \
		ft_putchar.c \
		ft_lennb.c \
		ft_printchar.c \
		ft_printstr.c \
		ft_printdec.c \
		ft_printundec.c \
		ft_printlowhex.c \
		ft_printuphex.c \
		ft_printptr.c

OBJ = $(SRC:.c=.o)

LIBFT_PATH = ./Libft
LIBFT = $(LIBFT_PATH)/libft.a

.PHONY: all clean fclean re libft

all: $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(LIBFT) $(OBJ)
	cp $(LIBFT) $(NAME)
	ar rcs $(NAME) $(OBJ)

$(LIBFT):
	make -C $(LIBFT_PATH) all
	make -C $(LIBFT_PATH) bonus

clean:
	make -C $(LIBFT_PATH) clean
	rm -f $(OBJ)

fclean: clean
	make -C $(LIBFT_PATH) fclean
	rm -f $(NAME)

re: fclean all
