#!/bin/bash

set -e

cargo build --target=armv7-unknown-linux-gnueabihf
scp target/armv7-unknown-linux-gnueabihf/debug/tobio-player rpi:
ssh rpi ./tobio-player
