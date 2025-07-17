#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm curl

curl --proto '=https' --tlsv1.2 --fail --silent --show-error https://sh.rustup.rs | sh
