# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ozahid- <ozahid-@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/26 21:00:27 by ozahid-           #+#    #+#              #
#    Updated: 2021/12/26 21:00:28 by ozahid-          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_unsignednumber.c ft_putchar.c ft_putnbr.c ft_putstr.c ft_putnbr.c ft_hexa.c ft_argp.c ft_printf.c
OBJ = $(SRC:.c=.o)

NAME = libftprintf.a

CFLAGS = -Wall -Wextra -Werror

CC = cc

RM = rm -rf

%.o : %.c ft_printf.h
	$(CC) $(FLAGS) -c $< -o $@

$(NAME) : $(OBJ)
	ar rcs $(NAME) $(OBJ)

all : $(NAME)

clean :
	$(RM) $(OBJ)

fclean : clean
	$(RM) $(NAME)

re : fclean all 

.PHONY : all clean fclean re