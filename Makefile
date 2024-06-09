CC=g++
CFLAGS=-g -O3 -Wall -Wextra -static-libstdc++ -static-libgcc -std=gnu++23 
TARGET=my_exe
SOURCE=main.cpp

all: $(TARGET)

$(TARGET): $(SOURCE)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f $(TARGET)
