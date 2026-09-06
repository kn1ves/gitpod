# gitpod

Startup script for Gitpod workspaces.

## What it does

`install.sh` sets up my Neovim environment on a fresh workspace:

1. Installs the latest stable Neovim to `/opt/nvim`
2. Clones [kn1ves/nvim](https://github.com/kn1ves/nvim) into `~/.config/nvim`
   (branch `feat/kickstart`)
3. Adds Neovim to `PATH` and persists it in `~/.zshrc`

## Usage

```bash
./install.sh
```
