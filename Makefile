CC = cc
CFLAGS += -Wall 
CFLAGS += -Wextra 
CFLAGS += -Werror
AR = ar rc
RM = rm -f

SRCS += ft_atoi.c
SRCS += ft_bzero.c
SRCS += ft_calloc.c
SRCS += ft_isalnum.c
SRCS += ft_isalpha.c
SRCS += ft_isascii.c
SRCS += ft_isdigit.c
SRCS += ft_isprint.c
SRCS += ft_itoa.c
SRCS += ft_memchr.c
SRCS += ft_memcmp.c
SRCS += ft_memcpy.c
SRCS += ft_memset.c
SRCS += ft_memmove.c
SRCS += ft_putchar_fd.c
SRCS += ft_putendl_fd.c
SRCS += ft_putnbr_fd.c
SRCS += ft_putstr_fd.c
SRCS += ft_split.c
SRCS += ft_strchr.c
SRCS += ft_strdup.c
SRCS += ft_striteri.c
SRCS += ft_strjoin.c
SRCS += ft_strlcat.c
SRCS += ft_strlcpy.c
SRCS += ft_strlen.c
SRCS += ft_strmapi.c
SRCS += ft_strncmp.c
SRCS += ft_strnstr.c
SRCS += ft_strrchr.c
SRCS += ft_strtrim.c
SRCS += ft_substr.c
SRCS += ft_tolower.c
SRCS += ft_toupper.c

BONUS_SRCS += ft_lstadd_back.c
BONUS_SRCS += ft_lstadd_front.c
BONUS_SRCS += ft_lstclear.c
BONUS_SRCS += ft_lstdelone.c
BONUS_SRCS += ft_lstiter.c
BONUS_SRCS += ft_lstlast.c
BONUS_SRCS += ft_lstmap.c
BONUS_SRCS += ft_lstnew.c
BONUS_SRCS += ft_lstsize.c

OBJS = ${SRCS:.c=.o}

BONUS_OBJS = ${BONUS_SRCS:.c=.o}

NAME = libft.a

${NAME}: ${OBJS}
	${AR} ${NAME} ${OBJS}

all: ${NAME}

%.o: %.c
	${CC} ${CFLAGS} -c $^ -o $@

bonus: ${OBJS} ${BONUS_OBJS}
	${AR} ${NAME} ${OBJS} ${BONUS_OBJS}

clean:
	${RM} ${OBJS} ${BONUS_OBJS} 

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re bonus
