#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm \
    ghostty \
    jq \
    man-db \
    mpv
