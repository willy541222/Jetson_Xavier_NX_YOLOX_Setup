#!/bin/sh

cd ..

echo "Update..."

sudo apt-get update

echo "Setting the jtop tools"

sudo apt-get install python3-pip
sudo -H pip3 install -U jetson-stats

echo"Tool install complete."

echo "export PATH=/usr/local/cuda/bin:$PATH" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH" >> ~/.bashrc
echo "export CUDA_HOME=$CUDA_HOME:/usr/local/cuda" >> ~/.bashrc
echo "export OPENBLAS_CORETYPE=ARMV8" >> ~/.bashrc

source ~/.bashrc

echo "Basic environments setup complete."

