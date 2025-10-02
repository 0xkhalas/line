.PHONY: all build run clean

all: build run clean

build:
	@./bin/nest compile src/main.line
	@cc main.o -o ./bin/line

run:
	@./bin/line

clean:
	@rm main.o
