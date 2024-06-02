# Tailscale DNS Switcher

This project provides a convenient way to start or stop Tailscale VPN and automatically switch DNS settings based on the VPN status, without having to manually use the terminal. When Tailscale is up, the script sets the DNS server to a private IP address (192.168.1.2). When Tailscale is down, the script reverts the DNS settings to default values (e.g., Google DNS).

## Contents

- `set_dns.sh`: The main script that checks the status of Tailscale and switches DNS settings.
- `set_dns_private.sh`: Script to set the private DNS server.
- `set_dns_default.sh`: Script to set the default DNS servers.
- `script-icon.png`: Project icon.

## Requirements

- Installed [Tailscale](https://tailscale.com/)
- Installed `netplan` (for Ubuntu)
- Installed `notify-send` for notifications (optional)

## Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/your-username/tailscale-dns-switcher.git
    cd tailscale-dns-switcher
    ```

2. Ensure the scripts have executable permissions:
    ```bash
    chmod +x set_dns.sh set_dns_private.sh set_dns_default.sh
    ```

## Usage

### Manual Execution

You can manually run the `set_dns.sh` script:
```bash
sudo ./set_dns.sh
