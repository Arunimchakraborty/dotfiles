local nvlsp = require "nvchad.configs.lspconfig"

-- Add ts_ls for TypeScript/JS intelligence and colors
local servers = { "html", "cssls", "tailwindcss", "eslint", "ts_ls" }

vim.lsp.enable(servers)

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    -- Apply NvChad's default mappings and highlights
    nvlsp.on_attach(client, args.buf)

    -- Ensure Semantic Tokens are enabled for vibrant colors
    if client.server_capabilities.semanticTokensProvider then
      vim.lsp.semantic_tokens.start(args.buf, client.id)
    end
  end,
})
