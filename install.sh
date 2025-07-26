---

## 🧰 `install.sh` (optional Installer)

```bash
#!/bin/bash

echo "Installing 'please' alias for your shell..."

SHELLTYPE=$(basename "$SHELL")

case "$SHELLTYPE" in
  bash)
    echo "alias please='sudo'" >> ~/.bash_aliases
    echo "✅ Added to ~/.bash_aliases"
    ;;
  zsh)
    echo "alias please='sudo'" >> ~/.zsh_aliases
    if ! grep -q "source ~/.zsh_aliases" ~/.zshrc; then
      echo '[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases' >> ~/.zshrc
    fi
    echo "✅ Added to ~/.zsh_aliases"
    ;;
  fish)
    mkdir -p ~/.config/fish
    echo 'alias please="sudo"' >> ~/.config/fish/config.fish
    echo "✅ Added to ~/.config/fish/config.fish"
    ;;
  *)
    echo "❌ Shell $SHELLTYPE not supported by this script. Please install manually."
    ;;
esac

echo "Done. Please restart your shell or source the file manually."
