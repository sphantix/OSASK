default: boot.bin a.img
	cp a.img 30OS.img
	dd if=boot.bin of=30OS.img bs=512 count=2 conv=notrunc

boot.bin: ipl.asm
	nasm ipl.asm -o ipl.bin
	nasm haribote.asm -o haribote.bin
	cat ipl.bin haribote.bin > boot.bin

clean:
	rm *.bin
	rm 30OS.img
