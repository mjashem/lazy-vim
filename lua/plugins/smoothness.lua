return {
  -- Smooth cursor animation (minimal, no trails)
  -- Official LazyVim extra - can also enable via :LazyExtras
  {
    "sphamba/smear-cursor.nvim",
    event = "VeryLazy", -- Load after startup for performance
    opts = {
      -- Minimal configuration for performance
      -- cursor_color = nil, -- Auto-detect from colorscheme
      min_horizontal_distance_smear = 0,
      min_vertical_distance_smear = 0,
    },
  },

  -- Smooth scrolling (Snacks.nvim scroll module)
  -- Created by folke (LazyVim author) - highly optimized
  {
    "folke/snacks.nvim",
    event = "VeryLazy",
    opts = {
      scroll = {
        enabled = true,
        -- Performance-optimized settings
        animate = {
          duration = { 150, 300 }, -- Faster animations (min, max ms)
          easing = "linear", -- Fastest easing function
        },
        -- Minimal feedback for better performance
        file = "none", -- Don't animate file switching
        horizontal = { enable = false }, -- Disable horizontal scroll
      },
    },
  },

  -- Disable mini.animate since we use smear-cursor and snacks.nvim
  -- This prevents conflicts and improves performance
  -- Note: Plugin renamed to nvim-mini/mini.animate
  {
    "nvim-mini/mini.animate",
    enabled = false,
  },
}
