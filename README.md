## Cross-Compiling Rust on ADLAM-PLUTO

This simple project shows how to cross-compile rust projects on the ADLAM-PLUTO SDR

## Setting up

1. Install rustup following the instruction [here](https://www.rust-lang.org/tools/install)
2. Install the `arm-unknown-linux-gnueabihf` target:
    ```
    rustup target add arm-unknown-linux-gnueabihf
    ```
3. Download the *sysroot* distribution for your ADLAM FW version:
    ```
    wget https://github.com/analogdevicesinc/plutosdr-fw/releases/download/v0.32/sysroot-v0.32.tar.gz
    ```
4. Untar it in a sysroot folder of your choosing, e.g:
    ```
    tar xzvf sysroot-v0.32.tar.gz ./my-sysroot/arm-unknown-linux-gnueabihf/
    ```
5. Run makefile:
    ```
    make build
    ```