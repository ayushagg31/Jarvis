#!/bin/bash

OS=$(lsb_release -si)
if [[ "$OS" == "Fedora" ]]; then
  sudo dnf install ffmpeg
  sudo dnf install notify-python -y
  sudo -H pip install -r requirements.txt
  sudo dnf install python-dbus -y
elif [[ "$OS" == "Ubuntu" ]] || [[ "$OS" == "LinuxMint" ]]; then
  sudo apt-get install ffmpeg
  sudo apt-get install python-notify2
  sudo -H pip install -r requirements.txt
elif [[ "$OS" == "Kali" ]]; then
  apt-get install ffmpeg
  apt-get install python-notify2
  pip install -r requirements.txt
else
  echo "Operating System not supported"
fi
