#!/bin/sh

curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain none -y
export PATH="$HOME/.cargo/bin:$PATH"

cd something-rust
cargo run --release
gzip -c target/release/something-rust > something-rust.gz
