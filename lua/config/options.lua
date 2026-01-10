-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- ==============================================================================
-- Cursor & Smoothness Settings
-- ==============================================================================

-- Disable cursor blinking for smoother experience
vim.o.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,a:blinkwait0-blinkoff0-blinkon0"

-- Enable smooth scroll behavior in Neovim 0.10+
if vim.fn.has("nvim-0.10") == 1 then
  vim.o.smoothscroll = true
end

-- Keep cursor centered when scrolling (performance-friendly)
vim.o.scrolloff = 8

-- ==============================================================================
-- Clipboard Settings
-- ==============================================================================

-- Use system clipboard by default
-- This makes yank/paste operations use the "+" register (system clipboard)
vim.opt.clipboard = "unnamedplus"
