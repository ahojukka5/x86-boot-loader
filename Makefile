all: boot boot.bin

boot.o: boot.s
	as -o $@ $<

boot: boot.o
	ld -o $@ $<

boot.bin: boot.o
	ld -o $@ --oformat binary $<
