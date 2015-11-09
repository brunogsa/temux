#!/bin/bash
ln -sf ~/tmux/.tmux.conf ~/.tmux.conf
tmux start-server \; source ~/.tmux.conf
sudo apt-get install -y xclip
echo "Done"
