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
  -- Themes
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    opts = {},
    lazy = false,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {},
    lazy = false,
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    opts = {},
    lazy = false,
  },
  {
    "rmehri01/onenord.nvim",
    name = "onenord",
    opts = {},
    lazy = false,
  },
  {
    "AlexvZyl/nordic.nvim",
    name = "nordic",
    opts = {},
    lazy = false,
  },
  {
    "olivercederborg/poimandres.nvim",
    name = "poimandres",
    opts = {},
    lazy = false,
  },
  {
    "lunarvim/horizon.nvim",
    name = "horizon",
    opts = {},
    lazy = false,
  },
}
