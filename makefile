# constants
CC=g++
CFLAGS=-I.
DEPS=helper.h
OBJ=main.o helper.o

# rule macro for obj files.
%.o: %.cpp $(DEPS)
# g++ -c -o main.o main.cpp -I.
# g++ -c -o helper.o helper.cpp -I.
	$(CC) -c -o $@ $< $(CFLAGS)

test: $(OBJ)
# g++ -o test main.o helper.o helper.h -I.
	$(CC) -o $@ $^ $(CFLAGS)

# prevents make from treating 'clean' as a file when executing 'make clean'
.PHONY: clean

# called when we execute 'make clean', make will execute 'rm -f ./*.o', removing all object files in the directory
clean:
	rm -f ./*.o
