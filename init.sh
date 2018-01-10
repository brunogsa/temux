#!/bin/bash
set -e

ln -sf ~/tmux/.tmux.conf ~/.tmux.conf
sudo apt-get install -y xclip

sudo apt-get update
sudo apt-get install -y python-software-properties software-properties-common
sudo add-apt-repository -y ppa:pi-rho/dev
sudo apt-get update

# Install Tmux
sudo apt-get install -y tmux

sudo apt-get install -y fonts-powerline

tmux start-server \; source ~/.tmux.conf
echo "Done"
