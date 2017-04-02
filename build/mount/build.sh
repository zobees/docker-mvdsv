#!/usr/bin/env bash

set -e

cd /usr/local/src
git clone https://github.com/deurk/mvdsv
cd mvdsv/build/make
./configure Linux 32
make

cp -f mvdsv $QW_DIR/mvdsv
cp -f ../../LICENSE $QW_DIR/LICENSE