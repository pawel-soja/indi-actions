#!/bin/bash

set -e

$(command -v sudo) tar -hxvf packages/googletest-package.tar --strip-components=1 -C /
