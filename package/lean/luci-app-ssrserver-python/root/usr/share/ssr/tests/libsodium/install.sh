#!/bin/bash

if [ ! -d libsodium-1.0.18 ]; then
    wget https://download.libsodium.org/libsodium/releases/libsodium-1.0.18.tar.gz || exit 1
    tar xf libsodium-1.0.18.tar.gz || exit 1
fi
pushd libsodium-1.0.18
./configure && make -j2 && make install || exit 1
sudo ldconfig
popd
