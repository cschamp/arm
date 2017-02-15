all: fib.s fib

fib:	fib.o fibtest.o
	$(CC) -o $@ $+

fib.s: fib.c
	$(CC) -g -S $+

clean:
	rm -f fib fib.o

