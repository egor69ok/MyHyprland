#!/bin/bash
# Включаем multilib для Steam
sudo sed -i '/\[multilib\]/,/Include/s/^#//' /etc/pacman.conf

sudo pacman -Syu --noconfirm
# Драйверы для Radeon 780M, звук PipeWire и база
sudo pacman -S --noconfirm xf86-video-amdgpu mesa vulkan-radeon \
vulkan-icd-loader libva libva-mesa-driver pipewire-alsa pipewire-jack \
pipewire-pulse pavucontrol base-devel git networkmanager nm-applet

sudo systemctl enable --now NetworkManager
echo "Система и драйверы готовы."
