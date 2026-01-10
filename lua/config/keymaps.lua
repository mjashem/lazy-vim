-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ==============================================================================
-- Insert Mode
-- ==============================================================================

-- Map jj to Esc in insert mode
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- Undo breakpoints (stop undo grouping on common punctuation)
vim.keymap.set("i", ",", ",<c-g>u", { desc = "Undo breakpoint" })
vim.keymap.set("i", ".", ".<c-g>u", { desc = "Undo breakpoint" })
vim.keymap.set("i", "!", "!<c-g>u", { desc = "Undo breakpoint" })

-- ==============================================================================
-- Text Operations (Delete/Change Without Yank)
-- ==============================================================================
-- Using black hole register to prevent overwriting yank register
-- This overrides default vim d/c behavior. To yank text, use 'y' explicitly.

vim.keymap.set({ "n", "v" }, "d", '"_d', { desc = "Delete (no yank)" })
vim.keymap.set({ "n", "v" }, "D", '"_D', { desc = "Delete to EOL (no yank)" })
vim.keymap.set({ "n", "v" }, "c", '"_c', { desc = "Change (no yank)" })
vim.keymap.set({ "n", "v" }, "C", '"_C', { desc = "Change to EOL (no yank)" })
vim.keymap.set({ "n", "v" }, "x", '"_x', { desc = "Delete char (no yank)" })
vim.keymap.set({ "n", "v" }, "X", '"_X', { desc = "Delete line (no yank)" })

-- Better paste behavior in visual mode (don't yank the replaced text)
vim.keymap.set("v", "p", '"_dP', { desc = "Paste without yanking" })

-- ==============================================================================
-- Line Manipulation
-- ==============================================================================

-- Duplicate lines
vim.keymap.set("n", "<leader>yp", "yyp", { desc = "Duplicate Line Down" })
vim.keymap.set("n", "<leader>yP", "yyP", { desc = "Duplicate Line Up" })

-- Move lines (LazyVim has Alt-j/k, add Ctrl versions for convenience)
vim.keymap.set("n", "<C-j>", "<cmd>m .+1<cr>==", { desc = "Move Line Down" })
vim.keymap.set("n", "<C-k>", "<cmd>m .-2<cr>==", { desc = "Move Line Up" })

-- ==============================================================================
-- Selection & Indentation
-- ==============================================================================

-- Select all
vim.keymap.set("n", "<leader>sa", "ggVG", { desc = "Select All" })

-- Indent/Outdent with visual selection preserved
vim.keymap.set("v", "<", "<gv", { desc = "Dedent and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent and reselect" })

-- ==============================================================================
-- Search & Replace
-- ==============================================================================

-- Clear search highlight on Enter (LazyVim has <esc> for this too)
vim.keymap.set("n", "<CR>", ":nohlsearch<CR>", { desc = "Clear search highlight" })

-- Visual search (search for selected text)
vim.keymap.set("v", "/", 'y/<C-R>"<CR>', { desc = "Search selected" })

-- ==============================================================================
-- Command Mode Enhancements
-- ==============================================================================

-- Edit current command in command-line window
vim.keymap.set("c", "<C-f>", "<C-f>", { desc = "Edit command in window" })

-- Navigate command history
vim.keymap.set("c", "<C-j>", "<Down>", { desc = "Next history" })
vim.keymap.set("c", "<C-k>", "<Up>", { desc = "Previous history" })

-- ==============================================================================
-- Quick Access to Config Files
-- ==============================================================================

-- Edit vim config
vim.keymap.set("n", "<leader>ev", "<cmd>e $MYVIMRC<cr>", { desc = "Edit vim config" })
vim.keymap.set("n", "<leader>sv", "<cmd>source $MYVIMRC<cr>", { desc = "Source vim config" })

-- Edit keymaps specifically
vim.keymap.set("n", "<leader>ek", "<cmd>e ~/.config/nvim/lua/config/keymaps.lua<cr>", { desc = "Edit keymaps" })

-- ==============================================================================
-- Window Management (Beyond LazyVim Defaults)
-- ==============================================================================

-- Window navigation (Alt + h/j/k/l)
vim.keymap.set("n", "<M-h>", "<C-w>h", { desc = "Focus window left" })
vim.keymap.set("n", "<M-j>", "<C-w>j", { desc = "Focus window down" })
vim.keymap.set("n", "<M-k>", "<C-w>k", { desc = "Focus window up" })
vim.keymap.set("n", "<M-l>", "<C-w>l", { desc = "Focus window right" })

-- Window equalization
vim.keymap.set("n", "<leader>w=", "<cmd>wincmd =<cr>", { desc = "Equalize Windows" })

-- Move windows (rearrange splits to edges)
vim.keymap.set("n", "<leader>wH", "<cmd>wincmd H<cr>", { desc = "Move Window Far Left" })
vim.keymap.set("n", "<leader>wJ", "<cmd>wincmd J<cr>", { desc = "Move Window Very Bottom" })
vim.keymap.set("n", "<leader>wK", "<cmd>wincmd K<cr>", { desc = "Move Window Very Top" })
vim.keymap.set("n", "<leader>wL", "<cmd>wincmd L<cr>", { desc = "Move Window Far Right" })

-- ==============================================================================
-- Buffer Management
-- ==============================================================================

-- Wipeout all buffers (delete completely, not just close)
vim.keymap.set("n", "<leader>bW", "<cmd>%bdelete|edit#|bdelete#<cr>", { desc = "Wipeout All Buffers" })

-- ==============================================================================
-- Quickfix & Diagnostics
-- ==============================================================================

-- Quickfix list management (LazyVim has <leader>xq for Trouble)
vim.keymap.set("n", "<leader>qo", "<cmd>copen<cr>", { desc = "Quickfix Open" })
vim.keymap.set("n", "<leader>qc", "<cmd>cclose<cr>", { desc = "Quickfix Close" })

-- ==============================================================================
-- Terminal
-- ==============================================================================

-- Toggle terminal at bottom
vim.keymap.set("n", "<leader>tt", function()
  vim.cmd("botright terminal")
  vim.cmd("resize 15")
end, { desc = "Toggle Terminal (Bottom)" })

-- Exit terminal mode using default: Ctrl-\ Ctrl-n
-- Close terminal (from normal mode)
vim.keymap.set("n", "<leader>tc", "<cmd>close<cr>", { desc = "Close Terminal" })

-- ==============================================================================
-- Fold Management
-- ==============================================================================

vim.keymap.set("n", "<leader>z", "za", { desc = "Toggle fold" })
vim.keymap.set("n", "<leader>Z", "zA", { desc = "Toggle fold recursively" })
vim.keymap.set("n", "<leader>zo", "zo", { desc = "Open fold" })
vim.keymap.set("n", "<leader>zO", "zO", { desc = "Open fold recursively" })
vim.keymap.set("n", "<leader>zc", "zc", { desc = "Close fold" })
vim.keymap.set("n", "<leader>zC", "zC", { desc = "Close fold recursively" })
