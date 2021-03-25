#!/bin/bash

set -x -e

echo Check os release
. /etc/os-release

VAR=2
echo Get sudo $(command -v sudo)
#SUDO2=$(command -v sudo)

echo "Case $ID"

case $ID in
    debian|ubuntu)
        echo update
        apt-get update
        # $SUDO apt-get -qqy dist-upgrade
        echo install
        apt-get -y install \
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

exit 0
