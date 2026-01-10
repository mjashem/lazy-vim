return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    settings = {
      save_on_toggle = true,
    },
  },
  keys = {
    { "<leader>ha", function() require("harpoon"):list():append() end, desc = "Harpoon Add File" },
    { "<leader>he", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, desc = "Harpoon Toggle Menu" },
    { "<leader>hh", function() require("harpoon"):list():select(1) end, desc = "Harpoon File 1" },
    { "<leader>hj", function() require("harpoon"):list():select(2) end, desc = "Harpoon File 2" },
    { "<leader>hk", function() require("harpoon"):list():select(3) end, desc = "Harpoon File 3" },
    { "<leader>hl", function() require("harpoon"):list():select(4) end, desc = "Harpoon File 4" },
    { "<leader>hH", function() require("harpoon"):list():prev() end, desc = "Harpoon Prev" },
    { "<leader>hL", function() require("harpoon"):list():next() end, desc = "Harpoon Next" },
  },
}
