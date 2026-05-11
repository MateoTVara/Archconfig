#!/usr/bin/env bash

set -euo pipefail

DOTFILES_DIR="$HOME/Dotfiles/home/dot/config"
TARGET_DIR="$HOME/.config"

mkdir -p "$TARGET_DIR"

link_item() {
  local source="$1"
  local target="$2"

  if [ -L "$target" ]; then
    echo "Skipping (already symlink): $target"
    return
  fi

  if [ -e "$target" ]; then
    echo "Warning: $target exists and is not a symlink, skipping"
    return
  fi

  ln -s "$source" "$target"
  echo "Linked: $target"
}

# Handle normal .config directories/files
for source in "$DOTFILES_DIR"/*; do
  name=$(basename "$source")

  # Skip systemd, handled separately
  if [ "$name" = "systemd" ]; then
    continue
  fi

  link_item "$source" "$TARGET_DIR/$name"
done

# Special handling for systemd/user
mkdir -p "$TARGET_DIR/systemd/user"

for source in "$DOTFILES_DIR/systemd/user"/*; do
  name=$(basename "$source")

  link_item \
    "$source" \
    "$TARGET_DIR/systemd/user/$name"
done
