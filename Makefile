
CC=x86_64-w64-mingw32-gcc
CFLAGS=-I/usr/x86_64-w64-mingw32/include

all: myapp.exe

myapp.exe: main.o
	$(CC) -o myapp.exe main.o

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

clean:
	rm -f *.o myapp.exe
