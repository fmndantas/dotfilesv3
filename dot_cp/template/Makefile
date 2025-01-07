COMPILER = g++
FLAGS = -std=c++17 -Wshadow -Wall -O2 -Wno-unused-result -g -ggdb3 -D_GLIBCXX_ASSERTIONS -D_GLIBCXX_DEBUG -fmax-errors=50

r: sol.out
	bash ./run.sh

m: sol.out
	bash ./wait.sh

sol.out: sol.o
	${COMPILER} ${FLAGS} -o sol.out sol.o

sol.o: sol.cpp
	${COMPILER} ${FLAGS} sol.cpp -c

b: sol.out gen.out slow.out
	bash ./brute.sh

w: sol.out gen.out
	bash ./while.sh

gen.out: gen.o
	${COMPILER} ${FLAGS} -o gen.out gen.o	

gen.o: gen.cpp
	${COMPILER} ${FLAGS} gen.cpp -c

slow.out: slow.o
	${COMPILER} ${FLAGS} -o slow.out slow.o	

slow.o: slow.cpp
	${COMPILER} ${FLAGS} slow.cpp -c
