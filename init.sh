#!/bin/bash
sudo ln -sf ~/tmux/.tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf
echo "Done"
