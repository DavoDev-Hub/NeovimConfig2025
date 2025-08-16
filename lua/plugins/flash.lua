return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "<leader>jj",
      function() require("flash").jump() end,
      desc = "Flash",
      mode = { "n", "x", "o" }
    },

    {
      "r",
      function() require("flash").remote() end,
      desc = "Remote Flash",
      mode = "o"
    },
    {
      "R",
      function() require("flash").treesitter_search() end,
      desc = "Treesitter Search",
      mode = { "o", "x" }
    },
    {
      "<C-s>",
      function() require("flash").toggle() end,
      desc = "Toggle Flash Search",
      mode = "c"
    },
  },
}
