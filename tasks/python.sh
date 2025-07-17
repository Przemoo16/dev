#!/usr/bin/env bash

set -euo pipefail

sudo pacman -S --needed --noconfirm curl

curl --fail --silent --show-error --location https://astral.sh/uv/install.sh | env INSTALLER_NO_MODIFY_PATH=1 sh
