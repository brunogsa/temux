#!/bin/bash
ln -sf ~/tmux/.tmux.conf ~/.tmux.conf
tmux start-server \; source ~/.tmux.conf
echo "Done"
