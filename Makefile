.PHONY: all build run clean

all: build run clean

ir:
	@../../target/release/nest ir src/main.line

build:
	@../../target/release/nest compile src/main.line
	@cc main.o -o line.tmp

run:
	@./line.tmp

clean:
	@rm main.o
	@rm line.tmp
