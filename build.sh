#!/bin/bash

set -e


export WORKDIR="$(pwd)"
export BUILD_OUTPUT=$WORKDIR/build.out

touch $BUILD_OUTPUT

DISTRO=Lakka PROJECT=H3 SYSTEM=opipc ARCH=arm make  image -j9 VERBOSE=0 >> $BUILD_OUTPUT 2>&1
