# Copyright (c) 2011 The Native Client Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
#
# Makefile for the MesaGL example.

NACLPORTS_ROOT ?= ../..

VALID_TOOLCHAINS := glibc newlib pnacl
DEFINES = -Wall -Wno-long-long -pthread -DXP_UNIX -Werror -DGL_GLEXT_PROTOTYPES
# Note that the OpenGL libraries are NOT included.  We use Mesa for rendering.
LIBS = nacl_io ppapi_cpp ppapi OSMesa
PAGE = $(OUTDIR)/mesagl.html
PAGE_TC_CONFIG = $(PAGE)

include $(NACL_SDK_ROOT)/tools/common.mk

TARGET = mesagl
SOURCES = mesagl.cc
INSTALL_DIR = $(NACLPORTS_ROOT)/out/publish/$(TARGET)

$(foreach src,$(SOURCES),$(eval $(call COMPILE_RULE,$(src),)))

$(eval $(call LINK_RULE,mesagl,$(SOURCES),$(LIBS),$(DEPS)))

$(eval $(call HTML_RULE,$(TARGET),))

install:
	mkdir -p $(INSTALL_DIR)
	cp $(OUTDIR)/*$(NACL_EXEEXT) $(INSTALL_DIR)
	cp $(OUTDIR)/$(TARGET).nmf $(INSTALL_DIR)
	cp $(OUTDIR)/$(TARGET).html $(INSTALL_DIR)

.PHONY: install
