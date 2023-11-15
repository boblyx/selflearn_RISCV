PNAME = hello
FOLDER = bin
OUT = $(FOLDER)/$(PNAME)
default:
	mkdir -p $(FOLDER)
	riscv64-linux-gnu-as $(PNAME).s -o $(OUT).o
	riscv64-linux-gnu-gcc -o $(OUT) $(OUT).o -nostdlib -static
