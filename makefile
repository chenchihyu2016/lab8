all: tetris.o genMino.o Mino.o MinoI.o MinoL.o MinoO.o MinoS.o MinoT.o
	g++ tetris.o genMino.o Mino.o MinoI.o MinoL.o MinoO.o MinoS.o MinoT.o -std=c++11 -o lab8
tetris.o: tetris.cpp genMino.h
	g++ -c -std=c++11 tetris.cpp
genMino.o: genMino.cpp genMino.h
	g++ -c -std=c++11 genMino.cpp
Mino.o: Mino.cpp Mino.h
	g++ -c -std=c++11 Mino.cpp
MinoI.o: MinoI.cpp MinoI.h Mino.h
	g++ -c -std=c++11 MinoI.cpp
MinoL.o: MinoL.cpp MinoL.h Mino.h
	g++ -c -std=c++11 MinoL.cpp
MinoO.o: MinoO.cpp MinoO.h Mino.h
	g++ -c -std=c++11 MinoO.cpp
MinoS.o: MinoS.cpp MinoS.h Mino.h
	g++ -c -std=c++11 MinoS.cpp
MinoT.o: MinoT.cpp MinoT.h Mino.h
	g++ -c -std=c++11 MinoT.cpp
clean:
	rm **.o

