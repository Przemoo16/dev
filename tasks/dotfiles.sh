#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm stow

cd ./dotfiles
for dir in */; do
    echo "Stowing $dir"
    stow --restow --target "$HOME" "$dir"
done
