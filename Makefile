default: boot.bin a.img
	cp a.img 30OS.img
	dd if=boot.bin of=30OS.img bs=512 count=1 conv=notrunc

boot.bin: ipl.asm
	nasm ipl.asm -o boot.bin

clean:
	rm boot.bin 30OS.img
