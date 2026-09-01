#!/bin/bash

echo "🚀 Installing Dotfiles..."

# Determine the directory where the install script is located
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Shell configs
echo "Linking shell configs..."
ln -sf "$DOTFILES_DIR/shell/.zshrc" ~/.zshrc
ln -sf "$DOTFILES_DIR/shell/.bash_profile" ~/.bash_profile

# Kitty configs
echo "Linking Kitty configs..."
mkdir -p ~/.config/kitty
ln -sf "$DOTFILES_DIR/kitty/kitty.conf" ~/.config/kitty/kitty.conf

# Ghostty configs
echo "Linking Ghostty configs..."
mkdir -p "$HOME/Library/Application Support/com.mitchellh.ghostty/themes"
ln -sf "$DOTFILES_DIR/ghostty/config" "$HOME/Library/Application Support/com.mitchellh.ghostty/config"
ln -sf "$DOTFILES_DIR/ghostty/themes/noctalia" "$HOME/Library/Application Support/com.mitchellh.ghostty/themes/noctalia"

# Starship config
echo "Linking Starship config..."
mkdir -p ~/.config
ln -sf "$DOTFILES_DIR/starship/starship.toml" ~/.config/starship.toml

# Zellij configs
echo "Linking Zellij configs..."
mkdir -p ~/.config/zellij/themes
ln -sf "$DOTFILES_DIR/zellij/config.kdl" ~/.config/zellij/config.kdl
ln -sf "$DOTFILES_DIR/zellij/themes/noctalia.kdl" ~/.config/zellij/themes/noctalia.kdl

# Neovim configs
echo "Linking Neovim configs..."
mkdir -p ~/.config
ln -sfn "$DOTFILES_DIR/nvim" ~/.config/nvim

# Btop configs
echo "Linking Btop configs..."
mkdir -p ~/.config
ln -sfn "$DOTFILES_DIR/btop" ~/.config/btop

echo "✅ Dotfiles installed successfully!"
echo "Please restart your terminal to apply changes."
