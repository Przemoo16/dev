#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm \
    brightnessctl \
    fzf \
    ghostty \
    man-db \
    mpv \
    tmux
