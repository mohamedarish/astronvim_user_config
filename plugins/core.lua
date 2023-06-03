return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function()
      require "alpha"
      require "alpha.term"
      local dashboard = require "alpha.themes.dashboard"
      -- dashboard.section.buttons.val = {
      --   dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
      --   dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
      --   dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
      --   dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
      --   dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
      --   dashboard.button("s", "勒" .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
      --   dashboard.button("l", "鈴" .. " Lazy", ":Lazy<CR>"),
      --   dashboard.button("q", " " .. " Quit", ":qa<CR>"),
      -- }
      -- for _, button in ipairs(dashboard.section.buttons.val) do
      --   button.opts.hl = "AlphaButtons"
      --   button.opts.hl_shortcut = "AlphaShortcut"
      -- end
      -- dashboard.section.footer.opts.hl = "Type"
      -- dashboard.section.header.opts.hl = "AlphaShortcut"
      -- dashboard.section.buttons.opts.hl = "AlphaButtons"

      -- local width = 50
      -- local height = 24 -- two pixels per vertical space
      -- dashboard.section.terminal.command = "cat | " .. os.getenv "HOME" .. "/.config/nvim/lua/user/art/neco2.sh"
      -- dashboard.section.terminal.width = width
      -- dashboard.section.terminal.height = height
      -- dashboard.section.terminal.opts.redraw = true

      -- dashboard.section.header.val = {
      --   -- "                                                    ",
      --   -- " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      --   -- " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      --   -- " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      --   -- " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      --   -- " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      --   -- " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      --   -- "                                                    ",
      --   " █████  ███████ ████████ ██████   ██████",
      --   "██   ██ ██         ██    ██   ██ ██    ██",
      --   "███████ ███████    ██    ██████  ██    ██",
      --   "██   ██      ██    ██    ██   ██ ██    ██",
      --   "██   ██ ███████    ██    ██   ██  ██████",
      --   " ",
      --   "    ███    ██ ██    ██ ██ ███    ███",
      --   "    ████   ██ ██    ██ ██ ████  ████",
      --   "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
      --   "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
      --   "    ██   ████   ████   ██ ██      ██",
      -- }

      -- Set header
      dashboard.section.header.val = {
        "                                                     ",
        "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
        "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
        "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
        "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
        "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
        "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
        "                                                     ",
      }

      -- Set menu
      dashboard.section.buttons.val = {
        dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "  > Find file", ":Telescope find_files<CR>"),
        dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
        dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h/lua/user"),
        dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
      }

      -- dashboard.config.layout = {
      --   { type = "padding", val = 1 },
      --   dashboard.section.terminal,
      --   { type = "padding", val = height / 6 },
      --   dashboard.section.header,
      --   { type = "padding", val = 1 },
      --   dashboard.section.buttons,
      --   { type = "padding", val = 1 },
      --   dashboard.section.footer,
      -- }

      return dashboard
    end,
  },
  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },
  --
  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },
  -- {
  --   "windwp/nvim-autopairs",
  --   config = function(plugin, opts)
  --     require "plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom autopairs configuration such as custom rules
  --     local npairs = require "nvim-autopairs"
  --     local Rule = require "nvim-autopairs.rule"
  --     local cond = require "nvim-autopairs.conds"
  --     npairs.add_rules(
  --       {
  --         Rule("$", "$", { "tex", "latex" })
  --           -- don't add a pair if the next character is %
  --           :with_pair(cond.not_after_regex "%%")
  --           -- don't add a pair if  the previous character is xxx
  --           :with_pair(
  --             cond.not_before_regex("xxx", 3)
  --           )
  --           -- don't move right when repeat character
  --           :with_move(cond.none())
  --           -- don't delete if the next character is xx
  --           :with_del(cond.not_after_regex "xx")
  --           -- disable adding a newline when you press <cr>
  --           :with_cr(cond.none()),
  --       },
  --       -- disable for .vim files, but it work for another filetypes
  --       Rule("a", "a", "-vim")
  --     )
  --   end,
  -- },
  -- By adding to the which-key config and using our helper function you can add more which-key registered bindings
  -- {
  --   "folke/which-key.nvim",
  --   config = function(plugin, opts)
  --     require "plugins.configs.which-key"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- Add bindings which show up as group name
  --     local wk = require "which-key"
  --     wk.register({
  --       b = { name = "Buffer" },
  --     }, { mode = "n", prefix = "<leader>" })
  --   end,
  -- },
}
