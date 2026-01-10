return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    -- Replace default 24-hour time with 12-hour format (in lualine_z)
    opts.sections.lualine_z = {
      function()
        return " " .. os.date("%I:%M %p")
      end,
    }

    -- Add total line count to lualine_y section
    table.insert(opts.sections.lualine_y, {
      function()
        return "L:" .. vim.fn.line("$")
      end,
    })

    return opts
  end,
}
