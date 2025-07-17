#!/usr/bin/env bash

set -euo pipefail

dry_run="0"
filter=""

log() {
    local message="$1"
    if [[ "$dry_run" == "1" ]]; then
        echo "[DRY_RUN]: $message"
    else
        echo "$message"
    fi
}

while [[ $# -gt 0 ]]; do
    if [[ "$1" == "--dry" ]]; then
        dry_run="1"
    else
        filter="$1"
    fi
    shift
done

dev_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
tasks=$(find "$dev_dir"/tasks -maxdepth 1 -mindepth 1 -executable -type f)

for task in $tasks; do
    if [[ -n "$filter" ]] && basename "$task" | grep --invert-match --quiet "$filter"; then
        log "Filtering $task"
        continue
    fi
    log "Executing $task"
    if [[ "$dry_run" == "0" ]]; then
        "$task"
    fi
done
