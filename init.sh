#!/bin/bash
ln -sf ~/tmux/.tmux.conf ~/.tmux.conf
sudo apt-get install -y xclip

# Update tmux to 1.9, if it's the case
sudo apt-get update
sudo apt-get install -y python-software-properties software-properties-common
sudo add-apt-repository -y ppa:pi-rho/dev
sudo apt-get update
sudo apt-get install -y tmux=2.0-1~ppa1~t
sudo apt-get install -y fonts-powerline

tmux start-server \; source ~/.tmux.conf
echo "Done"
