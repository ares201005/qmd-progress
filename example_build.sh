#!/bin/bash

# Make a copy of this script and modify the METIS and BML library locations

rm -r build
rm -r install

# Set METIS and BML Library locations
METIS_LIB="$HOME/metis-5.1.0/build/Linux-x86_64/libmetis"
BML_LIB="$HOME/bml/install/lib"

MY_PATH=`pwd`

# Configuring PROGRESS with OpenMP
export CC=${CC:=gcc}
export FC=${FC:=gfortran}
export CXX=${CXX:=g++}
export BLAS_VENDOR=${BLAS_VENDOR:=MKL}
export PROGRESS_OPENMP=${PROGRESS_OPENMP:=yes}
export INSTALL_DIR=${INSTALL_DIR:="${MY_PATH}/install"}
export PROGRESS_GRAPHLIB=${PROGRESS_GRAPHLIB:=no}
export PROGRESS_TESTING=${PROGRESS_TESTING:=yes}
export CMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE:=Release}
export PROGRESS_EXAMPLES=${PROGRESS_EXAMPLES:=yes}
PKG_CONFIG_PATH=$BML_LIB/pkgconfig ./build.sh configure

# Make PROGRESS library and examples
# cd build
# make
# make test
