#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm \
    ansible \
    openssh

sudo systemctl enable --now sshd

# shellcheck disable=SC2174
mkdir --parents --mode 700 "$HOME"/.ssh

ansible-vault view ./ssh/personal > "$HOME"/.ssh/personal
chmod 600 "$HOME"/.ssh/personal

install --mode 644 ./ssh/personal.pub "$HOME"/.ssh/personal.pub
install --mode 600 ./ssh/config "$HOME"/.ssh/config
