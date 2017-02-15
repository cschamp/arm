all: first

first: first.s
	gcc -o $@ $+

sum01: sum01.s
	gcc -o $@ $+

load01: load01.s
	gcc -o $@ $+

store01: store01.s
	gcc -o $@ $+

clean:
	rm -f first sum01 load01 store01

