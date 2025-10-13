.PHONY: all build run clean

all: build run clean

ir:
	@./bin/compiler ir src/main.line

build:
	@./bin/compiler compile src/main.line bin/main.o
	@cc ./bin/main.o -o ./bin/line

run:
	./bin/line

get:
	cargo build --release --manifest-path ../nest/Cargo.toml
	mkdir -p bin
	cp ../nest/target/release/nest ./bin/compiler

clean:
	@rm -f ./bin/main.o
