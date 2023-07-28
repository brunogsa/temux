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

# Plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux start-server \; source ~/.tmux.conf

~/.tmux/plugins/tpm/bin/install_plugins

echo "Done"
