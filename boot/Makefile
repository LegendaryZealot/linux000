all:
	as86 -0 -a -o boot.o boot.s
	ld86 -0 -s -o boot.bin boot.o
	dd bs=32 if=boot.bin of=Image skip=1
	ls -l ./
release:all
	echo 'done'
run:all
	bochs -q -f bochsrc.txt
test:
	bochs -q -f bochsrc.txt
clean:
	rm boot.o
	rm boot.bin
	rm bochs_log.txt
veryclean:
	rm Image