#!/bin/bash

. /etc/os-release

SUDO=$(command -v sudo)

case $ID in
    debian|ubuntu)
        $SUDO apt-get -qq update
        $SUDO apt-get -qqy dist-upgrade
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
