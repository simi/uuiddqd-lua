all: uuiddqd.so

uuiddqd.so: uuiddqd.c
		gcc -O2 -fPIC -I./lua -I./lua/src -c uuiddqd.c -o uuiddqd.o
		gcc -shared -o uuiddqd.so -L/usr/lib uuiddqd.o -luuid

clean:
		rm uuiddqd.so 2> /dev/null
