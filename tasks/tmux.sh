#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm \
    fzf \
    tmux
