#!/bin/sh

./Initial_Setup.sh
./Setup_ZeroTier.sh
./Setup_VNC.sh
./Install_Pytorch_torchvision.sh

python3 -m pip install --upgrade pip

./Install_Apex_Pycocotools.sh

echo "Complete install."
