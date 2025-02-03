# Dotfiles

## Multiplatform configuration

Uses chezmoi's Go based templates for setting up conditional configuration options for different
operating system or Linux distributions.

Currently platform differences are configured in:

- .chezmoiignore
- .chezmoiexternal.toml
- individual .tmpl files in chezmoi/home directory

## Chezmoi commands

Setup on a new machine.

```sh
chezmoi init --apply https://github.com/hojahoja/dotfiles.git
```

Or

```sh
chezmoi init --apply hojahoja
```

- `chezmoi add $FILE` - Add file to managed files in source directory.
- `chezmoi edit $FILE` - Edit config.
- `chezmoi status` - Quick overview of which files are about to change with `apply`.
- `chezmoi diff` - Check for differences between system and source file.
- `chezmoi merge` - Merge changes between system and source file using diff.
- `chezmoi apply` - Apply source changes to system config file.
- `chezmoi edit --apply $FILE` - combination of `edit` and `apply`.
- `chezmoi cd` - Open source directory in a new shell.
- `chezmoi managed` - Shows whether target file or folder is managed by chezmoi. Defaults to `$HOME`
- `chezmoi unmanaged` - Exact opposite of the previous command.
- `chezmoi data` - List all chezmoi variables.

## Neovim

Neovim configuration is in another repository and not directly managed by chezmoi. Neovim is loaded
(cloned or pulled) to a directory specified in .chezmoiexternal.toml. The target location depends on
current platform.

**Links**

[_"Personal config"_](https://github.com/hojahoja/kickstart-modular.nvim)

[_"Upstream"_](https://github.com/dam9000/kickstart-modular.nvim)

Setup nvim symlinks on linux.

```sh
stow -t ~/ nvim
```

## Additional

Two vim plugins are loaded directly from their git repos:
[surround](https://github.com/tpope/vim-surround)
[commentary](https://github.com/tpope/vim-commentary)

