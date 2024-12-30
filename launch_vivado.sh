#!/bin/bash

export LANG=en_US.UTF-8
export LANGUAGE=en_US:en
export LC_ALL=en_US.UTF-8
export LD_PRELOAD="/lib/x86_64-linux-gnu/libudev.so.1 /lib/x86_64-linux-gnu/libselinux.so.1 /lib/x86_64-linux-gnu/libz.so.1 /lib/x86_64-linux-gnu/libgdk-3.so.0"

# using mac command linking in orbstack
# open -a Xquartz
# vnc

killall hw_server >/dev/null 2>&1
xvcd

if [ -d "$HOME/Xilinx" ]; then
  echo "xilinx folder found"
  echo "starting hw_server"
  echo ""
  $HOME/Xilinx/Vivado/*/bin/hw_server -e "set auto-open-servers xilinx-xvc:host.docker.internal:2542" &

  echo "starting vivado"
  source $HOME/Xilinx/Vivado/*/settings64.sh
  $HOME/Xilinx/Vivado/*/bin/vivado
else
  echo "somethin wrong"
fi

echo "--- cleaning up ---"
# echo "closing xquartz"
# osascript -e 'quit app "Xquartz"'
echo "killing hw_server"
killall hw_server >/dev/null 2>&1
exit 0
