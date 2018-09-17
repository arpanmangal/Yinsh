all: main.cpp Player.cpp Game.cpp Move.cpp MicroMove.cpp Utility.cpp
	  g++ --std=c++11 -o dSwnnUAB main.cpp Player.cpp Game.cpp Move.cpp MicroMove.cpp Utility.cpp 

clean: 
	del -f *.exe

debug: main.cpp Player.cpp Game.cpp Move.cpp MicroMove.cpp Utility.cpp
	  g++ --std=c++11 -g -o debug main.cpp Player.cpp Game.cpp Move.cpp MicroMove.cpp Utility.cpp 

tester: tester.cpp Game.cpp Move.cpp MicroMove.cpp Utility.cpp
	  g++ --std=c++11 -g -o tester tester.cpp Game.cpp Move.cpp MicroMove.cpp Utility.cpp

dumb: dumbBot.cpp  Utility.cpp
	  g++ --std=c++11 -g -o dumb dumbBot.cpp  Utility.cpp