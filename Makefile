CC=g++
CFLAGS=-g -O3 -Wall -Wextra -static-libstdc++ -static-libgcc -std=gnu++23 

EXECS=main_exe

all: $(EXECS)

%_exe: %.cpp
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f $(EXECS)
