#this version is only on experimental branch

# constants
CC=g++
CFLAGS=-I.
DEPS=helper.h
OBJ=main.o helper.o

# rule macro for obj files
%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

test: $(OBJ)
# translation: 'g++ -o test main.cpp helper.cpp helper.h -I.' (i think)
	$(CC) -o $@ $^ $(CFLAGS)

# prevents make from treating 'clean' as a file when executing 'make clean'
.PHONY: clean

# called when we execute 'make clean', make will execute 'rm -f ./*.o', removing all object files in the directory
clean:
	rm -f ./*.o
