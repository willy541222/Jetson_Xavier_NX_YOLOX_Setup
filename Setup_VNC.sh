#!/bin/bash

echo "Start setting VNC"

sudo apt update
sudo apt install vino
sudo ln -s ../vino-server.service   /usr/lib/systemd/user/graphical-session.target.wants
gsettings set org.gnome.Vino prompt-enabled false
gsettings set org.gnome.Vino require-encryption false

