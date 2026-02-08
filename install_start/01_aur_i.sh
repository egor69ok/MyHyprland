#!/bin/bash
# Графика и шрифты
sudo pacman -S --noconfirm hyprland waybar swww wofi \
ttf-font-awesome noto-fonts swaylock-effects swaync grim slurp swappy
sudo pacman -S ttf-jetbrains-mono-nerd sudo pacman

# Установка yay (AUR)
git clone https://aur.archlinux.org
cd yay && makepkg -si --noconfirm && cd ..

echo "Оболочка установлена."
