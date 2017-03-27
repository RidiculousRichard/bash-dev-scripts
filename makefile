.PHONY: build rebuild clean

build :
	./tools/build-tools

rebuild : clean build

clean :
	./tools/clean-tools

