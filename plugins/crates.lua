local null_ls = require "null-ls"

return {
  "saecki/crates.nvim",
  event = { "BufEnter Cargo.toml" },
  requires = { { "nvim-lua/plenary.nvim" } },
  opts = {
    null_ls = {
      enabled = true,
      name = "crates.nvim",
    },
  },
}
