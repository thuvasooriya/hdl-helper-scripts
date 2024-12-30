#!/bin/sh

# linking mac commands
# link        Link a command to macOS
# notify      Send a macOS notification
# pull        Copy files from macOS
# push        Copy files to macOS
# run         Run command on macOS
# unlink      Unlink a macOS command

# mac link nvim
# mac link git

# mac run the server

# choice of which package manager to use nala or apt

apt-get update && apt-get upgrade -y
apt -y install ca-certificates
apt-get install -y --no-install-recommends \
  dbus dbus-x11 x11-utils xorg alsa-utils mesa-utils net-tools \
  libgl1-mesa-dri gtk2-engines lxappearance fonts-droid-fallback \
  ubuntu-gnome-default-settings curl gnupg \
  gtk2-engines-murrine gtk2-engines-pixbuf gnome-themes-standard

apt-get install -y --no-install-recommends \
  python3-pip python3-dev build-essential gcc-multilib g++ \
  ocl-icd-opencl-dev libjpeg62-dev libc6-dev-i386 graphviz make \
  unzip zip libtinfo5 xvfb libncursesw5 locales libswt-gtk-4-jni

# enable vitis unified ide
# apt-get install ubuntu-desktop-minimal -y --no-install-recommends

# sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen
export LANG=en_US.UTF-8
export LANGUAGE=en_US:en
export LC_ALL=en_US.UTF-8
# export LD_PRELOAD="/lib/x86_64-linux-gnu/libudev.so.1 /lib/x86_64-linux-gnu/libselinux.so.1 /lib/x86_64-linux-gnu/libz.so.1 /lib/x86_64-linux-gnu/libgdk-x11-2.0.so.0"
