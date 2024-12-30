#!/bin/sh

sudo apt-get install -y \
  tigervnc-standalone-server tigervnc-xorg-extension

# setup tigervnc
sudo sed -i 's/-iconic/-nowin/g' /etc/X11/Xtigervnc-session
rm -rd $HOME/.vnc
mkdir $HOME/.vnc
# echo "1920x1080" >>"$HOME/.vnc/vncresolution"
echo "1512x982" >>$HOME/.vnc/vncresolution # macbookpro
echo "passwd" >>$HOME/.vnc/vncpasswd
chown $USER $HOME/.vnc/vncpasswd
chmod 600 $HOME/.vnc/vncpasswd
