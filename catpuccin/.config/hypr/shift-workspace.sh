#!/bin/bash

clients_ws=$(hyprctl clients -j | jq -r '.[] | "\(.address) \(.workspace.id)"')

IFS=$'\n'
for client_ws in $clients_ws; do
  client_addr=$(echo $client_ws | awk '{print $1}')
  workspace=$(echo $client_ws | awk '{print $2}')

  if [ $workspace -le 0 ]; then
    continue
  fi
  
  next=$((workspace+1))
  # echo "addr: $client_addr; ws: $workspace; to ws: $next"
  hyprctl dispatch movetoworkspacesilent $next,address:$client_addr

done
