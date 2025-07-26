cat > install.sh <<'EOF'
#!/usr/bin/env bash
echo "Installing 'please' for your shell..."
SHELLTYPE=$(basename "$SHELL")
case "$SHELLTYPE" in
  bash)  echo "alias please='sudo'" >> ~/.bash_aliases ;;
  zsh)   echo "alias please='sudo'" >> ~/.zsh_aliases
         grep -q zsh_aliases ~/.zshrc || \
         echo '[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases' >> ~/.zshrc ;;
  fish)  mkdir -p ~/.config/fish
         echo 'alias please="sudo"' >> ~/.config/fish/config.fish ;;
  *)     echo "Shell $SHELLTYPE noch nicht unterstützt." ;;
esac
echo "Fertig. Neue Shell starten oder Konfig-Datei sourcen."
EOF
please chmod +x install.sh
