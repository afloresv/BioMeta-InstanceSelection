all: solver norm average

solver:
	mkdir -p bin
	rm -f bin/solver
	c++ src/solver.cpp -o bin/solver

norm:
	mkdir -p bin
	rm -f bin/normalize
	c++ src/normalize.cpp -o bin/normalize

average:
	mkdir -p bin
	rm -f bin/average
	c++ src/average.cpp -o bin/average
