return {
  "folke/noice.nvim",
  opts = {
    routes = {
      {
        filter = {
          event = "notify",
          kind = "info",
          any = {
            { find = "No information available" },
          },
        },
        opts = { skip = true },
      },
    },
  },
}
