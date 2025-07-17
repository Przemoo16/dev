#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm neovim
sudo pacman -S --needed --noconfirm ripgrep # Required by telescope
sudo pacman -S --needed --noconfirm unzip # Required by stylua
