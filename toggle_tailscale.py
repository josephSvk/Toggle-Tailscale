from pystray import MenuItem as item, Icon as icon
from PIL import Image
import os

def check_and_update_icon():
    status = os.popen('sudo tailscale status').read()
    if "Tailscale is stopped." in status and icon.is_visible():
        icon.stop()  # Zastaví a skryje ikonu
    elif "Tailscale is stopped." not in status and not icon.is_visible():
        icon.run()  # Spustí a zobrazí ikonu

def on_clicked(icon, item):
    os.system('sudo tailscale up')
    check_and_update_icon()  # Kontroluje stav a aktualizuje ikonu

def off_clicked(icon, item):
    os.system('sudo tailscale down')
    check_and_update_icon()  # Kontroluje stav a aktualizuje ikonu

# Načítanie obrázku ikony
image = Image.open('/home/joseph/Documents/My Script/tailscale/transparent_icon.png')

# Definovanie menu ikony
menu = (item('Turn On', on_clicked), item('Turn Off', off_clicked))

# Inicializácia a spustenie ikony
icon = icon('TailscaleIcon', image, menu=menu)
icon.run()
