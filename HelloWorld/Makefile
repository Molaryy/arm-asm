# Path of libSystem.dylib
LIB_SYSTEM_PATH := $(shell xcrun -sdk macosx --show-sdk-path)

HelloWorld: HelloWorld.o
	ld -o HelloWorld HelloWorld.o \
		-lSystem \
		-syslibroot $(LIB_SYSTEM_PATH) \
		-e _start \
		-arch arm64 

# ld: linker
#  -o: name of the binary file
#  -lSystem: links the executable with libSystem.dylib
#  -syslibroot: the path of the libSystem.dylib using
#  -e _start: which entrypoint to select
#  -arch: as the flag says, not necessary if compiling in Apple Sillicon but it's good to know

HelloWorld.o: HelloWorld.s
	as -arch arm64 -o HelloWorld.o HelloWorld.s

.PHONY: HelloWorld
.SILENT:

