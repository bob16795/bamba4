default:
	bamba3 c ./src/main.bam
	gcc lol.o -lLLVM-16 -no-pie -g
	./a.out
