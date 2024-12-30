#!/bin/sh

# DISPLAY_MODE=0 # xquartz
DISPLAY_MODE=1 # vnc

if [[ "$DISPLAY_MODE" -eq 0 ]]; then
  export DISPLAY=docker.for.mac.host.internal:0
  export JAVA_TOOL_OPTIONS="-Dsun.java2d.xrender=false"
fi
if [[ "$DISPLAY_MODE" -eq 1 ]]; then
  export DISPLAY=:1
  # ./vnc_start.sh
fi
