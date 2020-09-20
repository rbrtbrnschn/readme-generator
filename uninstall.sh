#!/bin/bash

sudo rm -rf /usr/local/bin/readme-gen
sudo rm -rf /usr/local/bin/readme-generator

for FILE in .editor .temp
do
	if [ -f $FILE ]
	then
		sudo rm -f $FILE
	fi
done
echo "Uninstalled Readme-Generator."
