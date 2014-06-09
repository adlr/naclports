#!/bin/bash
# Copyright (c) 2011 The Native Client Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

source pkg_info
source ../../build_tools/common.sh

ConfigureStep() {
  EXTRA_CMAKE_ARGS="-DPODOFO_BUILD_LIB_ONLY:BOOL=TRUE" CMakeConfigureStep
}

DefaultPackageInstall
exit 0
