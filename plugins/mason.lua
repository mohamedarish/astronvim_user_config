-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",        -- lua
        "jsonls",        -- json
        "eslint",        -- js, ts
        "pyright",       -- python
        "ruff_lsp",      -- python
        "rust_analyzer", -- rust
        "taplo",         -- toml
        "tsserver",      -- ts
        "yamlls",        -- yaml
        "marksman",      -- md
        "prismals",      -- prisma
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = { "prettierd", "stylua", "eslint_d", "flake8", "rustfmt", "isort", "black" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = { "python" },
    },
  },
}
