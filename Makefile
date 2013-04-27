CFLAGS=-g
LDLIBS=-lpthread -lm -ljobsignaler -lrt

all: gtrm

gtrm: dl_syscalls.o gtrm.o

clean:
	rm -f gtrm *.o

