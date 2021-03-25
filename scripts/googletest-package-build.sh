#!/bin/bash

set -e

mkdir -p packages/googletest-package
pushd build/googletest
make DESTDIR=../../packages/googletest-package install
popd

pushd packages
tar -cvf googletest-package.tar googletest-package --{owner,group}=root
popd
