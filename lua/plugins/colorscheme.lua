return {
  -- Add gruvbox-material
  {
    "sainnhe/gruvbox-material",
    lazy = false, -- Load at startup
    priority = 1000, -- Load before other plugins
    config = function()
      -- Configure gruvbox-material BEFORE loading
      vim.g.gruvbox_material_background = "medium" -- hard, medium, soft
      vim.g.gruvbox_material_palette = "material" -- material, mix, original
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_enable_bold = true
      vim.g.gruvbox_material_transparent_background = false

      -- Load the colorscheme
      vim.cmd("colorscheme gruvbox-material")
    end,
  },

  -- Configure LazyVim to use gruvbox-material
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
