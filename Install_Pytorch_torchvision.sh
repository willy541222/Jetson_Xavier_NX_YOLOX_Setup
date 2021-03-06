#!/bin/sh

cd ..

wget https://nvidia.box.com/shared/static/cs3xn3td6sfgtene6jdvsxlr366m2dhq.whl -O torch-1.7.0-cp36-cp36m-linux_aarch64.whl
sudo apt-get install python3-pip libopenblas-base libopenmpi-dev
sudo pip3 install Cython
sudo pip3 install numpy torch-1.7.0-cp36-cp36m-linux_aarch64.whl
sudo apt-get install libjpeg-dev zlib1g-dev libpython3-dev libavcodec-dev libavformat-dev libswscale-dev


git clone --branch v0.8.1 https://github.com/pytorch/vision torchvision
cd torchvision
export BUILD_VERSION=0.8.1
sudo python3 setup.py install --user
sudo pip3 uninstall pillow
sudo pip3 install pillow==8.4.0
cd ../

sudo chmod -R 777 ~/.local

echo "Pytorch 1.7.0 
      Torchvision v0.8.1
      Installation complete."

