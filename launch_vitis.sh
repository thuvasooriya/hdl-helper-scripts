#!/bin/bash

export LANG=en_US.UTF-8
export LANGUAGE=en_US:en
export LC_ALL=en_US.UTF-8
# export LD_PRELOAD="/lib/x86_64-linux-gnu/libudev.so.1 /lib/x86_64-linux-gnu/libselinux.so.1 /lib/x86_64-linux-gnu/libz.so.1 /lib/x86_64-linux-gnu/libgdk-3.so.0:$LD_PRELOAD"

# open -a Xquartz
# vnc

xvcd
source $HOME/Xilinx/Vitis/*/settings64.sh

$HOME/Xilinx/Vitis/*/bin/vitis
