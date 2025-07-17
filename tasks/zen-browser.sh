#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm \
    base-devel \
    git

git clone --depth 1 https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg --install --syncdeps --noconfirm

cd ..
rm --recursive --force yay-bin

yay --sync --needed --noconfirm zen-browser-bin
