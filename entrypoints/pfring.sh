#!/bin/bash

# specify here the packages you want to install before running this script
# TEST_PACKAGES: pfring pfring-drivers-zc-dkms

set -e

if [ "$1" = 'test' ]; then
    # do interesting test stuff here
    modprobe pf_ring
    rmmod pf_ring
else
    # can use this to run ntopng in the background for example
    exec "$@"
fi
