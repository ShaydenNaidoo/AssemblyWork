ASM = yasm
LD = ld
ASM_FLAGS = -f elf32
LD_FLAGS = -m elf_i386

SRC = $(wildcard *.asm)
OBJ = $(SRC:.asm=.o)
LST = $(SRC:.asm=.lst)
BIN = program

all: $(BIN)

$(BIN): $(OBJ)
	$(LD) $(LD_FLAGS) -o $@ $^

%.o %.lst: %.asm
	$(ASM) $(ASM_FLAGS) -l $*.lst -o $*.o $<

clean:
	rm -f *.o *.lst $(BIN)
