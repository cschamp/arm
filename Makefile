EXECUTABLES=first sum01 load01 store01

all: $(EXECUTABLES)

clean:
	rm -f $(EXECUTABLES)

