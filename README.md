# lolishinshi/imsearch binary
This is the compiled binary of [lolishinshi/imsearch](https://github.com/lolishinshi/imsearch) tool.

## Build environment
Built under Linux Subsystem for Windows (2)

- Operating system: Ubuntu 20.04.5 LTS
- Architecture: x86_64 (x86_64-linux-gnu)
- FAISS Compiled with CPU-only support, Intel MKL as BLAS library, linked statically (no Python, Unit Tests or CUDA)
- OpenCV from Ubuntu's APT repository (libopencv-dev)
- Rust toolchain: nightly-2022-08-01-x86_64-unknown-linux-gnu (1.64.0)

Shared objects required by the program are copied meticulously by hand, you must add the `libs` folder to the LD_LIBRARY_PATH environment variable, or install opencv and openblas.

**I can't guarantee that this will work on all linux systems.**

## Usage
Run `source setvars.bash`
Run `imsearch` to invoke the program
