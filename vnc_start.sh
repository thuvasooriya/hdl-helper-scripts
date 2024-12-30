#!/bin/sh

cat "$HOME/.vnc/vncpasswd" | vncpasswd -f >$HOME/.vnc/passwd
export VNC_PASSWORD=$(tr -d "\n\r\t " <"$HOME/.vnc/vncpasswd")
export VNC_USERNAME=$USER
export VNC_RESOLUTION=$(tr -d "\n\r\t " <"$HOME/.vnc/vncresolution")
export ORBENV=VNC_PASSWORD:VNC_USERNAME:VNC_RESOLUTION

vncserver -kill :1
# use -nocursor option with screen sharing app
# osascript -e "tell application \"Screen Sharing\" to GetURL \"vnc://$USER:$VNC_PASSWORD@localhost:5901\""

# using tigervnc viewer in mac for clipboard sync
vncserver -DisconnectClients -NeverShared \
  -geometry $VNC_RESOLUTION \
  -SecurityTypes VncAuth -PasswordFile "$HOME/.vnc/passwd" \
  -localhost no -verbose \
  -RawKeyboard -RemapKeys "0xffe9->0xff7e,0xffe7->0xff7e"

mac vncviewer -geometry $VNC_RESOLUTION localhost:5901
