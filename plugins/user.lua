return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  {
    "m4xshen/smartcolumn.nvim",
    opts = {},
    event = { "User Astrofile" },
  },
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        width = 1,
        height = 1,
      },
    },
    event = { "BufEnter" },
  },
  {
    "folke/twilight.nvim",
    config = true,
    event = { "BufEnter" },
  },
}
