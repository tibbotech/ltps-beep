
TO = $(PREFIX)/opt/tps-beeper/

all:
	$(CC) $(CFLAGS) $(LDFLAGS) -o beep_bell beep_bell.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o beep_tone beep_tone.c

clean:
	rm -f beep_bell beep_tone
	rm -f *.o

install:
	install -d $(TO)
	install beep_bell $(TO)
	install beep_tone $(TO)
