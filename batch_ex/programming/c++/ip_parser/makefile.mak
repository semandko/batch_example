
prog = ip_parser
source = ip_parser.cpp

.PHONY: all clean install uninstall

cc = g++ -o

all:
	@echo "Compiling"
	$(cc) $(prog) $(source)

clean:
	@echo "Cleaning"
	del $(prog).exe $(prog).o