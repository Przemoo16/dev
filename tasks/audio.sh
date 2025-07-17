#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm pavucontrol

# TODO: Not sure what packages are actually needed
# - pipewire
# - wireplumber
# - alsa-utils
# - sof-firmware
