#!/bin/bash

# Získa stav Tailscale pomocou príkazu 'tailscale status'
status=$(sudo tailscale status 2>&1)

# Zistí, či je Tailscale zastavený
if [[ "$status" == *"Tailscale is stopped."* ]] || [[ "$status" == *"does not appear to be running"* ]]; then
    # Ak je Tailscale zastavený, zapne ho
    sudo tailscale up
    chmod +x set_dns_private.sh
    sudo ./set_dns_private.sh
    notify-send "Tailscale Up" "Tailscale je zapnutý a DNS je nastavené na HA"
else
    # Ak Tailscale beží, vypne ho
    sudo tailscale down
    chmod +x set_dns_default.sh
    sudo ./set_dns_default.sh
    notify-send "Tailscale Down" "Tailscale je vypnutý a DNS je nastavené na predvolené hodnoty"
fi
