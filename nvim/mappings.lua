require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- lua/mappings.lua
map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "Format File without saving" })

-- Normal Mode: Move line(s) down/up
map("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
map("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })

-- Visual Mode: Move selected block down/up
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- For saving file
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
