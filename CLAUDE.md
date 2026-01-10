# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a personal Neovim configuration based on [LazyVim](https://github.com/LazyVim/LazyVim), a Neovim distribution that uses [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management.

## Common Commands

| Command | Purpose |
|---------|---------|
| `:Lazy sync` | Install, update, and clean plugins |
| `:Lazy update` | Update all plugins |
| `:Lazy build` | Build plugins that need compilation |
| `:Lazy health` | Check plugin manager health |
| `:Stylua %` | Format current file (requires stylua installed) |

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
- [`harpoon.lua`](lua/plugins/harpoon.lua) - Quick file navigation with Harpoon2
- [`undotree.lua`](lua/plugins/undotree.lua) - Visual undo history
- [`smoothness.lua`](lua/plugins/smoothness.lua) - Cursor animation and smooth scrolling
- [`cmp.lua`](lua/plugins/cmp.lua) - Enhanced cmdline completion with ghost text
- [`lazygit.lua`](lua/plugins/lazygit.lua) - Git integration with Gruvbox Material theme
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

## Keymap Conventions

### Custom Keymaps in this Config

| Key | Action | Location |
|-----|--------|----------|
| `jj` | Exit insert mode | [`keymaps.lua`](lua/config/keymaps.lua) |
| `d`, `c`, `x` | Delete/change without yank (black hole) | [`keymaps.lua`](lua/config/keymaps.lua) |
| `<leader>yp` / `<leader>yP` | Duplicate line down/up | [`keymaps.lua`](lua/config/keymaps.lua) |
| `<C-j>` / `<C-k>` | Move line down/up | [`keymaps.lua`](lua/config/keymaps.lua) |
| `<leader>w=` | Equalize windows | [`keymaps.lua`](lua/config/keymaps.lua) |
| `<leader>wH/J/K/L` | Move window to edge | [`keymaps.lua`](lua/config/keymaps.lua) |
| `<leader>bW` | Wipeout all buffers | [`keymaps.lua`](lua/config/keymaps.lua) |
| `<leader>qo` / `<leader>qc` | Open/close quickfix | [`keymaps.lua`](lua/config/keymaps.lua) |
| `<leader>ev` / `<leader>ek` | Edit config/keymaps | [`keymaps.lua`](lua/config/keymaps.lua) |
| `<leader>sv` | Source config | [`keymaps.lua`](lua/config/keymaps.lua) |
| `<leader>z*` | Fold operations (recursive toggle, open/close) | [`keymaps.lua`](lua/config/keymaps.lua) |
| `<leader>ha/he/hh/hj/hk/hl` | Harpoon add/menu/navigate | [`harpoon.lua`](lua/plugins/harpoon.lua) |
| `<leader>U` | Toggle UndoTree | [`undotree.lua`](lua/plugins/undotree.lua) |

A comprehensive keymap reference is available in [KEYMAP_GUIDE.md](KEYMAP_GUIDE.md).

### Config Access Keymaps

These keymaps provide quick access to configuration files:
- `<leader>ev` - Edit vim config (opens [`lua/config/lazy.lua`](lua/config/lazy.lua))
- `<leader>ek` - Edit keymaps (opens [`lua/config/keymaps.lua`](lua/config/keymaps.lua))
- `<leader>sv` - Source vim config (reload after changes)

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

LazyGit theme is configured in [`lua/plugins/lazygit.lua`](lua/plugins/lazygit.lua) to match the Gruvbox Material palette, with custom highlight fixes for `MatchParen` and `Visual` groups.

## Code Formatting

Configuration in [stylua.toml](stylua.toml):
- Indent type: Spaces
- Indent width: 2
- Column width: 120

## Performance Considerations

- Smoothness plugins ([`smoothness.lua`](lua/plugins/smoothness.lua)) use `event = "VeryLazy"` to load after startup
- `mini.animate` is disabled to prevent conflicts with smear-cursor and snacks.nvim
- Smooth scrolling uses optimized settings (faster animations, no file-switching animation, no horizontal scroll)

## Removing Auto-commands

LazyVim auto-commands are prefixed with `lazyvim_`. To remove one:
```lua
vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
```
