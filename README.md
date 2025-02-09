# NvChad Config

[![Neovim Minimum Version](https://img.shields.io/badge/Neovim-0.10-blueviolet.svg?style=flat-square&logo=Neovim&color=90E59A&logoColor=white)](https://github.com/neovim/neovim)

This repository houses a custom Neovim configuration aimed at transforming Neovim into a powerful
Python Integrated Development Environment (IDE). This setup provides features like syntax
highlighting, code completion, linting, debugging, and more, specifically optimized for Python
development.

## Requirements

- [Neovim 0.10](https://github.com/neovim/neovim/releases/tag/v0.10.0)
- [Nerd Font](https://www.nerdfonts.com/) as your terminal font.
- [Ripgrep](https://github.com/BurntSushi/ripgrep) (required for grep searching with Telescope).
- [GCC](https://gcc.gnu.org/).
- [Make](https://www.gnu.org/software/make/).

## Install

To install this configuration in Linux/macOS systems, run the following:

```
git clone https://github.com/dpoulopoulos/nvim ~/.config/nvim && nvim
```

- Run `:MasonInstallAll` after `lazy.nvim` finishes downloading plugins.
- Delete the `.git` folder.

To update your installation run `:Lazy sync`.

## Uninstall

To uninstall this Neovim configuration in Linux/macOS systems, run the following commands:

```
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

## Customize

Feel free to customize the configuration files to suit your specific workflow. Key mappings, plugin
settings, and LSP configurations are modularized for easy modification.

Read this great [ebook](https://lazyvim-ambitious-devs.phillips.codes/) by Dusty Phillips to get started. ✏️

## Contributing

Feel free to submit issues 🪱, feature requests ✨, or pull requests 🎁 to help improve this
configuration!

Happy coding! 🚀

