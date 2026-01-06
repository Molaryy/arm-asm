LIB_SYSTEM_PATH := $(shell xcrun -sdk macosx --show-sdk-path)
FILE_PATH=/tmp/newfile

all: ChmodFile.o
	./ChmodFile
	as -arch arm64 -o ChmodFile.o ChmodFile.s
	rm -f $(FILE_PATH)
	touch $(FILE_PATH)

ChmodFile:
	ld -o ChmodFile ChmodFile.o \
		-lSystem \
		-syslibroot $(LIB_SYSTEM_PATH) \
		-e _start \
		-arch arm64

.PHONY: ChmodFile
.SILENT:

