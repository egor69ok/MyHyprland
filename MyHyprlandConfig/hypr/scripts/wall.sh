#!/bin/bash
DIR="$HOME/Pictures/Wallpapers"
# Находим картинки и выбираем одну случайную
RANDOM_PIC=$(find "$DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) | shuf -n 1)

# Если нашли картинку — ставим её
if [ -n "$RANDOM_PIC" ]; then
    swww img "$RANDOM_PIC" --transition-type center
fi
