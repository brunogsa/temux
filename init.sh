#!/bin/bash
ln -sf ~/tmux/.tmux.conf ~/.tmux.conf
sudo apt-get install -y xclip
tmux start-server \; source ~/.tmux.conf
echo "Done"
