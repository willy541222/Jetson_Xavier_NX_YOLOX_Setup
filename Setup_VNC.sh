#!/bin/bash

BASEDIR=$pwd

echo "Start setting VNC"

cd ..

sudo apt update
sudo apt install vino
sudo ln -s ../vino-server.service   /usr/lib/systemd/user/graphical-session.target.wants
gsettings set org.gnome.Vino prompt-enabled false
gsettings set org.gnome.Vino require-encryption false

cp -f $BASEDIR/org.gnome.Vino.gschema.xml /usr/share/glib-2.0/schemas/org.gnome.Vino.gschema.xml

sudo glib-compile-schemas /usr/share/glib-2.0/schemas
gsettings set org.gnome.Vino enabled true 
mkdir -p ~/.config/autostart

cp -f $BASEDIR/vino-server.desktop ~/.config/autostart/vino-server.desktop

cp -f $BASEDIR/xorg.conf /etc/X11/xorg.conf

/usr/lib/vino/vino-server

