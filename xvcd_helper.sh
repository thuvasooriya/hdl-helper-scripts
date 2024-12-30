#!/bin/bash
# helper script for managing xvcd process

XVCD_COMMAND="mac xvcd"
DEVICE_FOUND_MSG="device found and xvcd is running in the background."
DEVICE_NOT_FOUND_MSG="error: device not found."
OUTPUT_WAIT_TIME=1

mac killall xvcd >/dev/null 2>&1
# start xvcd with output capture
($XVCD_COMMAND >/tmp/xvcd.log 2>&1) &
XVCD_PID=$!

# allow the process a few seconds to report errors
sleep OUTPUT_WAIT_TIME

# check if xvcd process is still running
if ! ps -p $XVCD_PID >/dev/null 2>&1; then
  # process terminated, check logs for error
  if grep -q "device not found" /tmp/xvcd.log; then
    echo "$DEVICE_NOT_FOUND_MSG"
    rm -f /tmp/xvcd.log
    exit 1
  fi
fi

# process still running, assume success
echo "$DEVICE_FOUND_MSG (PID: $XVCD_PID)"
rm -f /tmp/xvcd.log
exit 0
