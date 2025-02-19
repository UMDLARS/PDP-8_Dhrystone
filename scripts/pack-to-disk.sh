#!/bin/bash

#TODO: Allow changing these
PDP12_TOOLS_DIR=../PDP-12/PDP-12_Tools
TARGET_DISK_NAME=disk3.rk05
TARGET_DISK_SIDE=0

# Copy dhrystone src to disk folder
cp ./drystn.pa ./dhry.rk05.$TARGET_DISK_SIDE

# Re-pack disk image
$PDP12_TOOLS_DIR/8tools/os8implode $TARGET_DISK_NAME
$PDP12_TOOLS_DIR/8tools/mkdsk $TARGET_DISK_NAME.xml+

# Copy disk image back into PDP-12_Tools
cp ./dhry.rk05.new $PDP12_TOOLS_DIR/os8-disk-server/disks/$TARGET_DISK_NAME
