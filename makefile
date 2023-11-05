g11 = g++ -std=c++11
all: main.o tree.o floor.o
	$(g11) main.o tree.o floor.o -o christmas-tree
main.o: main.cpp
	$(g11) main.cpp -c -o main.o
tree.o: tree.cpp tree.h
	$(g11) tree.cpp -c -o tree.o
floor.o: floor.cpp floor.h
	$(g11) floor.cpp -c -o floor.o
clean:
	rm -f *.o christmas-tree
