# Tailscale DNS Switcher

This project provides a convenient way to start or stop Tailscale VPN and automatically switch DNS settings based on the VPN status, without having to manually use the terminal. When Tailscale is up, the script sets the DNS server to a private IP address (192.168.1.2). When Tailscale is down, the script reverts the DNS settings to default values (e.g., Google DNS).

## Contents

- `toggle_tailscale.sh`: The main script that checks the status of Tailscale and switches DNS settings.
- `set_dns_private.sh`: Script to set the private DNS server.
- `set_dns_default.sh`: Script to set the default DNS servers.
- `transparent_icon.png`: Project icon.

## Requirements

- Installed [Tailscale](https://tailscale.com/)
- Installed `netplan` (for Ubuntu)
- Installed `notify-send` for notifications (optional)

## Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/josephSvk/Toggle-Tailscale.git
    cd Toggle-Tailscale
    ```

2. Ensure the scripts have executable permissions:
    ```bash
    chmod +x toggle_tailscale.sh set_dns_private.sh set_dns_default.sh
    ```

## Usage

### Manual Execution

You can manually run the `toggle_tailscale.sh` script:
```bash
sudo ./toggle_tailscale.sh

Creating a Desktop Icon
To create a desktop icon for your script, follow these steps:

Download the repository and extract it to a desired location.

Drag and drop the tailscale-dns-switcher.desktop file to your desktop.

Open the .desktop file with a text editor and modify the paths to match your setup:

plaintext
Copy code
[Desktop Entry]
Version=1.0
Name=Tailscale DNS Switcher
Comment=Conveniently start or stop Tailscale and switch DNS settings
Exec=sudo /path/to/your/project/toggle_tailscale.sh
Icon=/path/to/your/project/transparent_icon.png
Terminal=true
Type=Application
Categories=Utility;Application;
Make the .desktop file executable:

bash
Copy code
chmod +x ~/Desktop/tailscale-dns-switcher.desktop
(Optional) If you want the icon to be available in the applications menu, move the .desktop file to the appropriate directory:

bash
Copy code
mv ~/Desktop/tailscale-dns-switcher.desktop ~/.local/share/applications/
