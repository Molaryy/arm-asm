LIB_SYSTEM_PATH := $(shell xcrun -sdk macosx --show-sdk-path)
FILE_PATH := /tmp/newfile

all: ChmodFile

ChmodFile: ChmodFile.o
	ld -o ChmodFile ChmodFile.o \
		-lSystem \
		-syslibroot $(LIB_SYSTEM_PATH) \
		-e _start \
		-arch arm64

ChmodFile.o: ChmodFile.s
	as -arch arm64 -o ChmodFile.o ChmodFile.s
	rm -f $(FILE_PATH)
	touch $(FILE_PATH)

.PHONY: all
.SILENT:
