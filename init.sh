#!/bin/bash
ln -sf ~/tmux/.tmux.conf ~/.tmux.conf

brew install xclip

# Install Tmux
brew install tmux

# Install powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd -
rm -rf fonts

tmux start-server \; source ~/.tmux.conf
echo "Done"
