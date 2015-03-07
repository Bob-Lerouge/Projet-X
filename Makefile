all : main
	gcc main.o -o main `pkg-config opencv --libs`
main:
	gcc -c main.c -Wall `pkg-config opencv --cflags`

clean::
	rm -f *~ *.o main
