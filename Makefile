CC = gcc
CFLAGS = -Wall -Wextra -g

all: compile run

compile:
	mkdir -p build
	$(CC) $(CFLAGS) src/main.c -o build/main

run:
	./build/main

asm: 
	$(CC) $(CFLAGS) -fverbose-asm -S src/main.c -o src/main.s
