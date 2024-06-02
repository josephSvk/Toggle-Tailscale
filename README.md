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

3. Drag and drop the tailscale-dns-switcher.desktop file to your desktop.

4. Open the .desktop file with a text editor and modify the paths to match your setup:

```bash
#!/usr/bin/env xdg-open
[Desktop Entry]
Type=Application
Encoding=UTF-8
Name=Toggle Tailscale
Comment=Toggle Tailscale VPN On/Off
Icon=/path/to/your/project/transparent_icon.png
Exec=bash "/path/to/your/project/toggle_tailscale.sh"
Terminal=false
Categories=Utility;

```
5. Make the .desktop file executable:

```bash
chmod +x ~/Desktop/ToggleTailscale.desktop

```
6. (Optional) If you want the icon to be available in the applications menu, move the .desktop file to the appropriate directory:

```bash
mv ~/Desktop/ToggleTailscale.desktop ~/.local/share/applications/

```
## Contributing
**If you have ideas for improvements or have found a bug, feel free to open an issue or create a pull request.**