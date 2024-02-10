CC=gcc
CFLAGS=-I. -w -g
DEPS = greeter.h
OBJ = hello.o greeter.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hello: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)


