#!/bin/bash

set -e

git clone https://github.com/google/googletest.git googletest

mkdir -p build/googletest
pushd build/googletest
cmake \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    -DBUILD_SHARED_LIBS=ON \
    . ../../googletest

make -j3
popd
