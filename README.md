# please – the polite alternative to sudo

Tired of shouting at your machine with `sudo`? Try asking nicely.

This tiny tool adds `please` as a wrapper for `sudo` in:
- bash
- zsh
- fish

## Quick Install

```bash
git clone https://github.com/XQ539/polite-shell.git
cd polite-shell
./install.sh
```

## Alternative

### in bash
1. Create file `~/.bash_aliases`
2. Insert content: `alias please='sudo'`
3. done.

### in zsh
1. Create file `~/.zsh_aliases`
2. Insert content: `alias please='sudo'`
3. done.

### in fish
1. Create file `~/.config/fish/functions`
2. Insert content:
   ```bash
   function please --wraps=sudo --description 'alias please sudo'
   	sudo $argv
   end
   ```
   
4. done.
