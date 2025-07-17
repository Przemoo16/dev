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

for arg in "$@"; do
    if [[ "$arg" == "--dry" ]]; then
        dry_run="1"
    else
        filter="$arg"
    fi
done

tasks=$(find ./tasks -mindepth 1 -maxdepth 1 -executable -type f)

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
