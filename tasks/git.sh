#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm git

git config --global user.name "Przemek Kanach"
git config --global user.email "kanach16@gmail.com"
git config --global core.editor nvim
