#!/bin/bash

SRC=$PWD
$SRC/dependencies.sh

sudo cp -a $PWD /usr/local/bin/readme-generator/
sudo cp -a $PWD/readme-gen /usr/local/bin/readme-gen
echo "Installed Readme-Generator."
echo "You can now use 'readme-gen'"

