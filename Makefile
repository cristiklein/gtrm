CFLAGS=-g
LDLIBS=-lpthread -lm -ljobsignaler -lrt

all: gtrm

gtrm: dl_syscalls.o gtrm.o

gtrm.o: gtrm.c gtrm_fun.h dl_syscalls.h

dl_syscalls.o: dl_syscalls.c dl_syscalls.h

clean:
	rm -f gtrm *.o

