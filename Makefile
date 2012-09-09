CC = gcc
CFLAGS=-g

all:main.o fibso
	$(CC) -Xlinker -rpath -Xlinker ./ -o fib main.o libfib.so
#	$(CC) -Xlinker -rpath -Xlinker /home/andre/work/liba/fib-1.0.0 -o fib main.o libfib.so

main.o:main.c
	$(CC) $(CFLAGS) -c main.c

fibso:fib.c
	$(CC) $(CFLAGS) -fPIC -shared -o libfib.so fib.c

clean:
	rm -f libfib.so fib main.o
