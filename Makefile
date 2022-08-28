
EXE=CommandLineFPS

LDFLAGS=-lncurses
CFLAGS=-std=c++11

all: $(EXE)

$(EXE): $(EXE).cpp 
	clang++ $(CFLAGS) -c $(EXE).cpp -o $(EXE).o 
	clang++ $(LDFLAGS) $(EXE).o   -o $(EXE) 

clean:
	rm -rf *.o ./$(EXE)
