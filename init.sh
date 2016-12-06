#!/bin/bash
ln -sf ~/tmux/.tmux.conf ~/.tmux.conf
sudo apt-get install -y xclip

# Update tmux to 1.9, if it's the case
sudo apt-get update
sudo apt-get install -y python-software-properties software-properties-common
sudo add-apt-repository -y ppa:pi-rho/dev
sudo apt-get update

wget https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz
tar -xzf tmux-2.3.tar.gz
cd tmux-2.3/
sudo apt-get install -y libevent-dev ncurses-dev
./configure
sudo make
sudo make install
cd -

sudo apt-get install -y fonts-powerline

tmux start-server \; source ~/.tmux.conf
echo "Done"
