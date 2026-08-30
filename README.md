# 💤 Memnoc's LazyVim config

My personal, portable LazyVim configuration.

## Requirements

- Neovim 0.11.2 or newer, built with LuaJIT
- Git
- A Nerd Font for icons

Language servers, formatters, and debuggers are managed through the enabled
LazyVim extras and Mason where possible.

## Install

Clone the repository, then copy its contents into Neovim's configuration
directory:

```sh
git clone git@github.com:Memnoc/My-LazyVim.git
mkdir -p ~/.config/nvim
rsync -a --exclude=.git My-LazyVim/ ~/.config/nvim/
```

Start Neovim and let Lazy install the configured plugins. Run `:checkhealth`
after installation to identify any optional tools needed for your languages.

## Credits

Thanks to [LazyVim](https://github.com/LazyVim/LazyVim).
See the [official installation documentation](https://lazyvim.github.io/installation)
for more details.
