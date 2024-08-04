CUSTOM_CFLAGS =

all:
	gcc $(CUSTOM_CFLAGS) -x c -c RGFW.h -D RGFW_NO_API -D RGFW_EXPORT -D RGFW_IMPLEMENTATION -o RGFW.o
	gcc $(CUSTOM_CFLAGS) metal.m RGFW.o -lm -framework Metal -framework Foundation -framework AppKit -framework Cocoa -framework CoreVideo -framework QuartzCore
