# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a personal Neovim configuration based on [LazyVim](https://github.com/LazyVim/LazyVim), a Neovim distribution that uses [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management.

## Architecture

### Entry Point
- [init.lua](init.lua) - Bootstrap file that loads [`lua/config/lazy.lua`](lua/config/lazy.lua)

### Core Configuration (lua/config/)
- [`lazy.lua`](lua/config/lazy.lua) - Plugin manager setup and plugin imports
- [`options.lua`](lua/config/options.lua) - Neovim options (extends [LazyVim defaults](https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua))
- [`keymaps.lua`](lua/config/keymaps.lua) - Custom keybindings (extends [LazyVim defaults](https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua))
- [`autocmds.lua`](lua/config/autocmds.lua) - Auto-commands (extends [LazyVim defaults](https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua))

### Plugin Configuration (lua/plugins/)
Each file in this directory is automatically loaded by lazy.nvim. Files return Lua tables with plugin specifications:

- [`colorscheme.lua`](lua/plugins/colorscheme.lua) - Gruvbox Material theme configuration
- [`flutter.lua`](lua/plugins/flutter.lua) - Flutter/Dart development tools
- [`example.lua`](lua/plugins/example.lua) - Reference examples (disabled, returns empty table)

## Plugin Specification Pattern

Plugin specs in `lua/plugins/` can:
- Add new plugins
- Disable/enable LazyVim plugins (`enabled = false`)
- Override LazyVim plugin configuration (merge with parent spec using `opts`)

Example pattern from [`example.lua`](lua/plugins/example.lua#L12-L41):
```lua
return {
  -- Add a plugin
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "gruvbox" },
  },

  -- Override plugin opts (merged with parent)
  {
    "folke/trouble.nvim",
    opts = { use_diagnostic_signs = true },
  },

  -- Disable a plugin
  { "folke/trouble.nvim", enabled = false },
}
```

## Language Support

- **Flutter/Dart**: Configured in [`lua/plugins/flutter.lua`](lua/plugins/flutter.lua)
  - LSP: `dartls` with line length 120
  - Keymaps: `<leader>fr` (run), `<leader>fh` (hot reload), `<leader>fq` (quit)
  - Telescope extension loaded

## Colorscheme

Uses `gruvbox-material` with:
- Background: `medium`
- Palette: `material`
- Italic and bold enabled

## Removing Auto-commands

LazyVim auto-commands are prefixed with `lazyvim_`. To remove one:
```lua
vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
```
