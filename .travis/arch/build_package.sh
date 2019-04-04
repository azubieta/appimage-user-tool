#!/usr/bin/env bash

# Find the right sources dir path
SOURCES_DIR=`realpath $0`
SOURCES_DIR=`dirname ${SOURCES_DIR}`
SOURCES_DIR=`dirname ${SOURCES_DIR}`

sudo docker build -t build/arch ${SOURCES_DIR}/.travis/docker/arch/
sudo docker run -v ${PWD}:/source build/arch \
    /bin/bash -c "cp /sources/.travis/arch/PKGBUILD . && makepkg"