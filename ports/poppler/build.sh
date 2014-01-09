#!/bin/bash
# Copyright (c) 2011 The Native Client Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

source pkg_info
source ../../build_tools/common.sh

EXTRA_CONFIGURE_ARGS="\
  --enable-shared=no \
  --disable-largefile \
  --disable-libopenjpeg \
  --disable-libtiff \
  --disable-libjpeg \
  --disable-splash-output \
  --disable-poppler-qt4 \
  --disable-poppler-qt5 \
  --disable-gtk-test \
  --disable-utils \
  --with-font-configuration=fontconfig \
  --enable-cms=none \
  --without-x \
"

# The configure script for fontconfig uses AC_PATH_PROG rather than
# AC_PATH_TOOL when looking for freetype-config, so it doesn't finds the
# system one rather than one in the toolchain.
#EXTRA_CONFIGURE_ARGS+=" --with-freetype-config=${NACLPORTS_PREFIX}/bin/freetype-config"
#export PKG_CONFIG_PATH="/usr/local/google/home/adlr/Code/naclports/src/out/repository/fontconfig-2.10.2/build-nacl-x86_64-newlib"

DefaultPackageInstall
exit 0
