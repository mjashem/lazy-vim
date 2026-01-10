return {
  -- Enable cmdline completion
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.experimental = opts.experimental or {}
      opts.experimental.ghost_text = true

      local cmp = require("cmp")

      opts.completion = {
        completeopt = "menu,menuone,noinsert",
      }

      -- Enable cmdline completion globally
      opts.enabled = function()
        -- Disable in prompt buffers
        return vim.api.nvim_buf_get_option(0, "buftype") ~= "prompt"
      end

      return opts
    end,
    dependencies = {
      -- Cmdline completion source
      {
        "hrsh7th/cmp-cmdline",
        event = "CmdlineEnter",
        config = function()
          local cmp = require("cmp")

          cmp.setup.cmdline(":", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
              { name = "path" },
            }, {
              { name = "cmdline" },
            }),
          })

          cmp.setup.cmdline({ "/", "?" }, {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
              { name = "buffer" },
            },
          })
        end,
      },
    },
  },
}
