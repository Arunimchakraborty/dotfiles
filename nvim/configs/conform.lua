-- lua/configs/conform.lua
local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black" },
    rust = { "lsp" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
  },

  -- This is the "magic" part that formats when you save (:w)
  format_on_save = {
    timeout_ms = 3000,
    lsp_fallback = true, -- If no formatter is found, try using the LSP
  },
}

require("conform").setup(options)
