CC=gcc
CFLAGS=-I. -w -g
DEPS = hello.c
OBJ = hello.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hello: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)


