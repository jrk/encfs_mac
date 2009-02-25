#!/bin/sh

#autoreconf -if

_BOOST_SERIALIZATION_LIB=boost_serialization-mt
_BOOST_SYSTEM_LIB=boost_system-mt
_BOOST_FILESYSTEM_LIB=boost_filesystem-mt

LDFLAGS=-L/opt/local/lib                                            \
CPPFLAGS=-D__FreeBSD__=10                                           \
./configure --with-boost-serialization=${_BOOST_SERIALIZATION_LIB}  \
            --with-boost-system=${_BOOST_SYSTEM_LIB}                \
            --with-boost-filesystem=${_BOOST_FILESYSTEM_LIB}
