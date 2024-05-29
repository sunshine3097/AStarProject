CC = gcc
CFLAGS = -Wall -std=c99
OBJ = Gen_file.o queue.o Alg.o main.o

all: main

Gen_file.o: Gen_file.c
	$(CC) $(CFLAGS) -c Gen_file.c

queue.o: queue.c queue.h
	$(CC) $(CFLAGS) -c queue.c

Alg.o: Alg.c astar.h queue.h
	$(CC) $(CFLAGS) -c Alg.c

main.o: main.c astar.h queue.h
	$(CC) $(CFLAGS) -c main.c

main: $(OBJ)
	$(CC) $(CFLAGS) -o main $(OBJ)

clean:
	rm -f *.o main map.txt
