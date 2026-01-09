return {
  {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- "stevearc/dressing.nvim", -- Optional: exclude if you don't want it
    },
    config = function()
      require("flutter-tools").setup({
        ui = {
          -- the border type to use for all floating windows, the same options/formats
          -- used for ":h nvim_open_win" e.g. "single" | "shadow" | {<table-of-eight-chars>}
          border = "rounded",
          -- This determines whether notifications are show with `vim.notify` or with the plugin's custom UI
          -- please note that this option is eventually going to be deprecated and users will need to
          -- depend on plugins like `nvim-notify` instead.
          notification_style = "plugin",
        },
        decorations = {
          statusline = {
            -- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
            -- this will show the current version of the flutter app from the pubspec.yaml file
            app_version = false,
            -- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
            -- this will show the currently running device if an application was started with a specific
            -- device
            device = true,
            -- set to true to be able use the 'flutter_tools_decorations.project_config' in your statusline
            -- this will show the currently selected project configuration
            project_config = true,
          },
        },
        -- LSP Configuration (integrates with Mason/LazyVim)
        lsp = {
          on_attach = function(client, bufnr)
            -- LazyVim's default LSP keymaps will work automatically
            -- No need to manually define basic LSP keys here
            vim.keymap.set("n", "<leader>fr", "<cmd>FlutterRun<cr>", { desc = "Flutter Run", buffer = bufnr })
            vim.keymap.set("n", "<leader>fh", "<cmd>FlutterReload<cr>", { desc = "Flutter Hot Reload", buffer = bufnr })
            vim.keymap.set("n", "<leader>fq", "<cmd>FlutterQuit<cr>", { desc = "Flutter Quit", buffer = bufnr })
            -- A
          end,
          settings = {
            dart = {
              lineLength = 120,
              completeFunctionCalls = true,
              showTodos = true,
            },
          },
        },
        -- Debugger (optional - enable if needed
        debugger = {
          enabled = false, -- Set to true if you want debugging
        },
        -- Other flutter-tools features
        widget_guides = { enabled = false },
        dev_log = {
          enabled = true,
          filter = nil, -- optional callback to filter the log
          -- takes a log_line as string argument; returns a boolean or nil;
          -- the log_line is only added to the output if the function returns true
          notify_errors = false, -- if there is an error whilst running then notify the user
          open_cmd = "15split", -- command to use to open the log buffer
          focus_on_open = true, -- focus on the newly opened log window
        },
        closing_tags = {
          highlight = "Comment", -- highlight for the closing tag
          prefix = ">", -- character to use for close tag e.g. > Widget
          priority = 10, -- priority of virtual text in current line
          -- consider to configure this when there is a possibility of multiple virtual text items in one line
          -- see `priority` option in |:help nvim_buf_set_extmark| for more info
          enabled = true, -- set to false to disable
        },
      })
    end,
  },

  -- Optional: Configure LazyVim's LSP integration (if not using Dart extra)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        dartls = {},
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      require("telescope").load_extension("flutter")
    end,
  },
}
