return {
  -- Disable LazyVim's default Neo-tree
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },

  -- Yazi file explorer
  {
    "mikavilpas/yazi.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    event = "VeryLazy",
    keys = {
      {
        "<leader>e",
        function()
          require("yazi").yazi()
        end,
        desc = "Open Yazi File Explorer",
      },
      {
        "<leader>E",
        function()
          require("yazi").yazi(nil, vim.fn.expand("%:p:h"))
        end,
        desc = "Open Yazi at Current File Location",
      },
    },
    opts = {
      -- Open in a terminal split (vertical by default)
      open_for_directories = true,
      -- Enable floating window if you want to change display mode
      -- floating_window_scaling_factor = 0.9,
    },
  },
}
