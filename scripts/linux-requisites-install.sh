#!/bin/bash

set -x -e

echo Check os release
. /etc/os-release

echo Get sudo ($(command -v sudo))
SUDO=$(command -v sudo)

case $ID in
    debian|ubuntu)
        echo update
        $SUDO apt-get -qq update
        # $SUDO apt-get -qqy dist-upgrade
        echo install
        $SUDO apt-get -qqy install \
            libnova-dev libcfitsio-dev libusb-1.0-0-dev zlib1g-dev \
            libgsl-dev build-essential cmake git libjpeg-dev \
            libcurl4-gnutls-dev libtiff-dev libfftw3-dev
        ;;
    *)
        echo "Unknown Linux Distribution"
        cat /etc/os-release
        exit 1
        ;;
esac
