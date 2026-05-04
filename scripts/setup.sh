#!/usr/bin/env bash

set -euo pipefail

DOTFILES_DIR="$HOME/Dotfiles/config"
TARGET_DIR="$HOME/.config"

mkdir -p "$TARGET_DIR"

for dir in "$DOTFILES_DIR"/*; do
  name=$(basename "$dir")
  target="$TARGET_DIR/$name"

  # If symlink already exists, skip
  if [ -L "$target" ]; then
    echo "Skipping (already symlink): $name"
    continue
  fi

  # If something exists but is not a symlink, warn
  if [ -e "$target" ]; then
    echo "Warning: $target exists and is not a symlink, skipping"
    continue
  fi

  ln -s "$dir" "$target"
  echo "Linked: $name"
done