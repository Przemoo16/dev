#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm networkmanager

sudo systemctl enable --now NetworkManager
