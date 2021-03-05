.PHONY: all macos clean

all:
	xcrun -sdk iphoneos clang -arch arm64 -arch arm64e -mios-version-min=10.0 -Weverything libdimentio.c dimentio.c -o dimentio -framework IOKit -framework CoreFoundation -lcompression -O2
	codesign -s ${CODESIGN_IDENTITY} --entitlements tfp0.plist dimentio

macos:
	xcrun -sdk macosx clang -arch arm64 -Weverything libdimentio.c dimentio.c -o dimentio -framework IOKit -framework CoreFoundation -lcompression -O2

clean:
	$(RM) dimentio
