#!/bin/bash

STATUS_FILE="$HOME/.cache/rclone/last_status"

if pgrep -x rclone >/dev/null; then
  echo '{"text": "Syncing in progress...", "tooltip": "Rclone syncing...", "class": "syncing", "alt": "syncing"}'
elif [[ -f "$STATUS_FILE" ]] && [[ $(cat "$STATUS_FILE") -ne 0 ]]; then
  echo '{"text": "Error occured during syncing", "tooltip": "Rclone error", "class": "error", "alt": "error"}'
else
  echo '{"text": "Fully synced", "tooltip": "Rclone idle", "class": "idle", "alt": "idle"}'
fi
