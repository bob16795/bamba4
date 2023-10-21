test0: test0.o
	gcc test0.o -o test0
	./test0

SOURCES := $(shell find src -name '*.bam')
STD_SOURCES := $(shell find std -name '*.bam')

bamba4: lol.o
	gcc lol.o -lLLVM-16 -no-pie -g -o bamba4

lol.o: $(SOURCES)
	bamba3 c ./src/main.bam

test0.o: bamba4 examples/test0.bam $(STD_SOURCES)
	./bamba4 examples/test0.bam -o test0.o

clean:
	rm -rf bamba4
	rm -rf *.o
	rm -rf test0
