#!/bin/bash

# Install Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# Install NvChad
git clone https://github.com/NvChad/starter ~/.config/nvim

# Cleanup
rm -f nvim-linux64.tar.gz

# Update PATH
export PATH="$PATH:/opt/nvim-linux64/bin"

# Make PATH persistent
if ! grep -q "/opt/nvim-linux64/bin" ~/.bashrc; then
    echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ~/.bashrc
fi

# Reload the shell configuration (for current session)
source ~/.bashrc
