.PHONY: all build clean

all: build clean

ir:
	@./bin/compiler ir src/main.line

build:
	@./bin/compiler compile src/main.line bin/main.o
	@cc ./bin/main.o -o ./bin/line

get:
	cargo build --release --manifest-path ../nest/Cargo.toml
	mkdir -p bin
	cp ../nest/target/release/nest ./bin/compiler

clean:
	@rm -f ./bin/main.o
