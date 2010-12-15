#!/bin/sh

#export BINUTILS_REVISION="binutils-2_20"
export BINUTILS_REVISION="HEAD"
export BINUTILS_CONFIG_EXTRA_ARGS="--enable-targets=x86_64-w64-mingw32,i686-w64-mingw32"
export GCC_CONFIG_EXTRA_ARGS="--enable-fully-dynamic-string --enable-targets=all"
export GCC_BRANCH="tags/gcc_4_5_1_release"
export MINGW_BRANCH="branches/releases/v1.0"
export MINGW_CONFIG_EXTRA_ARGS="--enable-lib32 --enable-lib64"
export ROOT_DIR_SUFFIX="usr"

make -f makebuildroot.mk-upstream debian-package
