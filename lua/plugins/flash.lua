return {
  "folke/flash.nvim",
  opts = {
    modes = {
      -- options used when flash is activated through
      -- a regular search with `/` or `?`
      search = { enabled = false },
      -- options used when flash is activated through
      -- `f`, `F`, `t`, `T`, `;` and `,` motions
      char = { enabled = false },
    },
  },
  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
  },
}
