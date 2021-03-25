#!/bin/bash

set -x -e

. /etc/os-release

case $ID in
    debian|ubuntu)
        $(command -v sudo) apt-get update
        # $(command -v sudo) apt-get -qqy dist-upgrade
        $(command -v sudo) apt-get -y install \
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
