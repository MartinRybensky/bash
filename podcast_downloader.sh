#!/bin/bash

curl $1 | grep 'mp3' | cut -d '"' -f4- | cut -d '"' -f1 > mp3_list.txt
wget -i mp3_list.txt -nc
rm -rf mp3_list.txt

exit 0
