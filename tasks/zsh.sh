#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm \
    curl \
    git \
    zsh

sudo chsh --shell "$(which zsh)"
sh -c "$(curl --fail --silent --show-error --location https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc --unattended
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions "$HOME"/.oh-my-zsh/custom/plugins/zsh-autosuggestions
