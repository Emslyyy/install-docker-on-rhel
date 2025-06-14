#!/bin/bash

# Ensure you are root or using sudo
sudo -v

echo "[+] Updating system..."
sudo dnf -y update

echo "[+] Installing required packages..."
sudo dnf -y install yum-utils device-mapper-persistent-data lvm2

echo "[+] Adding Docker CE repo..."
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

echo "[+] Installing Docker..."
sudo dnf -y install docker-ce docker-ce-cli containerd.io

echo "[+] Enabling and starting Docker service..."
sudo systemctl enable --now docker

echo "[+] Adding current user to docker group..."
sudo usermod -aG docker "$USER"

echo "[+] Docker installation complete!"
echo "⚠️  You may need to log out and log back in (or run: newgrp docker) to use Docker without sudo."

echo "[+] Testing Docker..."
docker --version
