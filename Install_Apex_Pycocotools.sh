#!/bin/bash

cd ../

git clone https://github.com/NVIDIA/apex
cd apex
sudo python3 setup.py install
cd ../

git clone https://github.com/cocodataset/cocoapi.git
cd cocoapi
cd PythonAPI
sudo python3 setup.py install --user
