return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- This is for rust new version
  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended for Neovim 0.11+
    lazy = false, -- This plugin handles its own loading
  },

  -- This is for rust (old)
  -- {
  --   "simrat39/rust-tools.nvim",
  --   ft = "rust", -- Only load when opening a Rust file
  --   dependencies = "neovim/nvim-lspconfig",
  --   opts = function()
  --     return require "configs.rust-tools" -- We will create this file next
  --   end,
  --   config = function(_, opts)
  --     require("rust-tools").setup(opts)
  --   end,
  -- },
  --
  -- 2. ENABLE TREESITTER FOR RUST
  -- This provides the advanced syntax highlighting from your guide
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "rust",
        "toml",
        "typescript",
        "javascript",
        "tsx",
        "json",
      },
      highlight = {
        enable = true,
        use_languagetree = true,
      },
    },
  },

  -- autosave
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup {
        -- your config goes here
        -- or just leave it empty :)
      }
    end,
  },

  -- for typescript
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    ft = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
    opts = {
      settings = {
        -- This makes the LSP feel "smarter" by adding type hints inline
        expose_as_code_action = "all",
        tsserver_file_preferences = {
          includeInlayParameterNameHints = "all",
          includeInlayParameterNameHintsWhenArgumentMatchesName = false,
          includeInlayFunctionParameterTypeHints = true,
          includeInlayVariableTypeHints = true,
          includeInlayPropertyDeclarationTypeHints = true,
          includeInlayFunctionLikeReturnTypeHints = true,
          includeInlayEnumMemberValueHints = true,
        },
      },
    },
  },

  -- lua/plugins/init.lua
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- This makes it load exactly when you save a file
    config = function()
      require "configs.conform"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
