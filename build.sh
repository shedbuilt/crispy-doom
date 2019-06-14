#!/bin/bash
# Configure
autoreconf -fi &&
./configure --prefix=/usr \
            --with-libpng \
            --with-libsamplerate &&
# Build and Install
make -j $SHED_NUM_JOBS &&
make DESTDIR="$SHED_FAKE_ROOT" install
