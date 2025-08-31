  GNU nano 8.3                               Mointordn.sh                                Modified  
#!/bin/bash

IFACE="wlp0s20f3mon"

echo "[*] Putting $IFACE into managed mode..."

sudo airmon-ng stop $IFACE

sudo systemctl start NetworkManager

sudo systemctl start wpa_supplicant 

echo "[+] $IFACE is now in monitor mmode"
iw dev | grep type
