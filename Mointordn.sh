#!/bin/bash

IFACE="wlp0s20f3"

echo "[*] Putting $IFACE into monitor mode..."

sudo airmon-ng check kill

sudo airnon-ng start $IFACE

sudo airmon-ng start $IFACE


echo "[+] $IFACE is now in monitor mmode"
iw dev | grep type

