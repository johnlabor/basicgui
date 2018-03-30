CC = gcc
CFLAGS = -g
LDFLAGS = 
LIBS = .
SRC = src/gtkpfuncs.c
OBJ = $(SRC:.c=.o)

OUT = bin/libgtkpfuncs.a

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

$(OUT): $(OBJ)
	ar rcs $(OUT) $(OBJ)

basicgui:
	$(CC) $(CFLAGS) src/basicgui.c $(OUT) -o bin/basicgui -lm

clean :
#	@rm src/*.o bin/*
	@rm src/*.o
	@echo Cleaned!
