#!/usr/bin/bash
wget -O code-latest.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
sudo apt install ./code-latest.deb
rm code-latest.deb