#!/bin/bash
ln -sf ~/tmux/.tmux.conf ~/.tmux.conf
sudo apt-get install -y xclip

sudo apt-get update
sudo apt-get install -y software-properties-common

# Install Tmux
sudo apt-get install -y tmux

sudo apt-get install -y fonts-powerline

# Plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux start-server \; source ~/.tmux.conf
~/.tmux/plugins/tpm/bin/install_plugins

echo "Done"
