-- Lazygit configuration with proper Gruvbox Material theme support
return {
  -- Configure Snacks.nvim (part of LazyVim) for better lazygit theming
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      -- Configure lazygit theme with proper gruvbox-material colors
      -- This overrides the default theme mapping to use highlight groups
      -- that actually have colors defined in gruvbox-material
      opts.lazygit = opts.lazygit or {}
      opts.lazygit.theme = {
        -- Use Function (green/cyan) for active border instead of MatchParen (no color)
        activeBorderColor = { fg = "Function", bold = true },
        -- Use DiagnosticError (red) for searching
        searchingActiveBorderColor = { fg = "DiagnosticError", bold = true },
        -- Keep the rest as defaults
        cherryPickedCommitBgColor = { fg = "Identifier" },
        cherryPickedCommitFgColor = { fg = "Function" },
        defaultFgColor = { fg = "Normal" },
        inactiveBorderColor = { fg = "FloatBorder" },
        optionsTextColor = { fg = "Function" },
        selectedLineBgColor = { bg = "Visual" },
        unstagedChangesColor = { fg = "DiagnosticError" },
      }
      return opts
    end,
  },

  -- Ensure gruvbox-material sets up proper highlight groups for lazygit
  {
    "sainnhe/gruvbox-material",
    opts = function()
      -- After colorscheme loads, ensure MatchParen has a proper color
      -- This fixes the issue where Snacks.nvim can't get the color for activeBorderColor
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "gruvbox-material",
        callback = function()
          -- Get the blue color from the palette
          local blue = vim.api.nvim_get_hl(0, { name = "DiagnosticInfo", link = false }).fg
            or vim.api.nvim_get_hl(0, { name = "Function", link = false }).fg
            or 0x7daea3

          -- Set MatchParen to use blue color so it can be used by Snacks.nvim
          vim.api.nvim_set_hl(0, "MatchParen", {
            fg = blue,
            bold = true,
          })

          -- Set Visual to have a proper background color for lazygit selections
          -- Uses bg_visual_blue from the gruvbox-material palette for better contrast
          vim.api.nvim_set_hl(0, "Visual", {
            bg = 0x374141,
          })
        end,
      })
    end,
  },
}
