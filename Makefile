PROG := nomic.exe

SOURCES := nomic.c
OBJECTS := $(SOURCES:.c=.o)

.PHONY: all clean

all: $(PROG)

clean:
	$(RM) $(OBJECTS) $(PROG)

%.o: %.c
	$(CC) -c -o $@ $<

%.exe: $(OBJECTS)
	$(CC) -o $@ $<
