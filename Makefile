CC=g++
CFLAGS=-g -O3 -Wall -Wextra -static-libstdc++ -static-libgcc -std=gnu++23 

SOURCES=$(wildcard *.cpp)
EXECS=$(patsubst %.cpp,%.exe,$(SOURCES))

all: $(EXECS)

%.exe: %.cpp
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f $(EXECS)