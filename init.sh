#!/bin/bash
ln -sf ~/tmux/.tmux.conf ~/.tmux.conf
sudo apt-get install -y xclip
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux start-server \; source ~/.tmux.conf
echo "Done"
