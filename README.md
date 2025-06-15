# arm64

### assemble
`aarch64-linux-gnu-as -o syscall.o syscall.s`
**Example:** `aarch64-linux-gnu-as -o <target_filename>.o <filename>.s`
Replace the target_filename & filename with the actual filename

### link to get executable
`aarch64-linux-gnu-ld -o <target_executable> <target_filename>.o`
**Example:** `aarch64-linux-gnu-ld -o syscall syscall.o`
Replace the target_filename & target_executable with the actual filename

### run the binary
`qemu-aarch64 ./target_executable`
**Example:** `qemu-aarch64 ./syscall`
