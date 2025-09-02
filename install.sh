# Install Neovim
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# Install custom config
git clone https://github.com/kn1ves/nvim ~/.config/nvim
git checkout feat/kickstart

# Cleanup
rm -f nvim-linux-x86_64.tar.gz
# Update PATH
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# Make PATH persistent
if ! grep -q "/opt/nvim-linux-x86_64/bin" ~/.zshrc; then
    echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> ~/.zshrc
fi
