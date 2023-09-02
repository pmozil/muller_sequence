include config.mk

all: main clean_libs
main: main.o dec64.o dec64_math.o dec64_string.o
	$(CC) main.o dec64.o dec64_string.o dec64_math.o -o main

main.o: main.c dec64.h dec64_string.h config.mk
dec64.o: dec64.c dec64.h
dec64_string.o: dec64_string.c dec64_string.h
dec64_math.o: dec64_math.c dec64_math.h

clean:
	rm -f main *.o

clean_libs:
	rm -f *.o

.SUFFIXES: .c .o
.c.o:
	$(CC) $(CFLAGS) $(BLENDCFLAGS) -c $<
