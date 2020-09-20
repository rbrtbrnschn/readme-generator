#!/bin/bash

SRC=$PWD
$SRC/dependencies.sh
sudo cp -a $PWD /usr/local/bin/readme-generator
sudo cp -a readme-gen /usr/local/bin/readme-gen
echo "Installation Complete"
echo "You can now use 'readme-gen'"

