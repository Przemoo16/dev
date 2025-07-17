#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm \
    base-devel \
    git

git clone --depth 1 https://aur.archlinux.org/yay-bin.git
pushd ./yay-bin > /dev/null
makepkg --install --syncdeps --noconfirm
popd > /dev/null
rm --recursive --force ./yay-bin

yay --sync --needed --noconfirm zen-browser-bin
