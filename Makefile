target := arm-unknown-linux-gnueabihf
linker := arm-linux-gnueabihf-gcc
here := $(CURDIR)
prog := pluto-radar
ip := 192.168.2.1
sysroot := './my-sysroot/'
export

cargo/config:
	cat src/config_template | envsubst  > .cargo/config

build: cargo/config src/*.rs 
	cargo build --target=$(target) 

install:
	scp target/$(target)/debug/$(prog)  root@$(ip):/tmp/

test: install
	ssh root@$(ip) /tmp/$(prog)

all: build install
 
