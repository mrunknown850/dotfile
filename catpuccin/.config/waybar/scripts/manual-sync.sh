#!/bin/bash

CHECK_GROUP="$HOME/.config/waybar/scripts/rclone-status.sh"

# echo $(bash $CHECK_GROUP | jq .alt)

if [[ $(bash $CHECK_GROUP | jq -r .alt) != idle ]]; then
  notify-send "Syncing already in progress."
else
  notify-send "Started syncing..."
  $HOME/.local/bin/sync.sh & disown
fi
  
