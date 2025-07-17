#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm \
    hyprland \
    hyprlock \
    rofi-wayland \
    sddm

sudo systemctl enable --now sddm
