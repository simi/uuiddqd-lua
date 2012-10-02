all: uuiddqd.so

uuiddqd.so: uuiddqd.c
		gcc -Wall -shared -fPIC -o uuiddqd.so -Ilua/src -llua -luuid uuiddqd.c

clean:
		rm uuiddqd.so 2> /dev/null
