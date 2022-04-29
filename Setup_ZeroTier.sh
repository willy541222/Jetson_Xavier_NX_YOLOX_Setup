#!/bin/bash

sudo apt-get install curl

cd ..
curl -s https://install.zerotier.com | sudo bash

sudo zerotier-cli join c7c8172af1106bab

