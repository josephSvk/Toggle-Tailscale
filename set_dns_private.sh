#!/bin/bash

# Vytvorenie zálohy súčasného súboru /etc/resolv.conf
cp /etc/resolv.conf /etc/resolv.conf.backup

# Nastavenie DNS serverov
echo "nameserver 192.168.1.2" > /etc/resolv.conf

# Úprava konfiguračného súboru netplan
NETPLAN_CONFIG="/etc/netplan/01-netcfg.yaml"

if [ -f "$NETPLAN_CONFIG" ]; then
    cp $NETPLAN_CONFIG ${NETPLAN_CONFIG}.backup
    cat <<EOF > $NETPLAN_CONFIG
network:
    version: 2
    ethernets:
        eth0:
            dhcp4: true
            dhcp4-overrides:
                use-dns: false
            nameservers:
                addresses:
                    - 192.168.1.2
EOF
    sudo netplan apply
fi
