#!/usr/bin/bash

#git installation
sudo apt update && sudo apt upgrade
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git
git --version