all:
	as86 -0 -a -o boot.o boot.s
	ld86 -0 -s -o boot.bin boot.o
	dd bs=32 if=boot.bin of=Image skip=1
release:all
	make clean
test:
	bochs -q -f bochsrc.txt
clean:
	rm -f boot.o boot.bin bochs.log
veryclean:clean
	rm -f Image
