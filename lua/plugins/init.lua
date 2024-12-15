return {
  {
    -- Lightweight yet powerful formatter plugin for Neovim
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
        "pyright",
        "gopls",
        "clangd",
  			"lua-language-server",
        "dockerfile-language-server",
        "yaml-language-server",
        "debugpy",
        "prettier",
        "flake8",
        "stylua",
  		},
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			-- defaults
        "vim",
        "lua",

        -- dev
        "python",
        "go",

        -- config
        "json",
        "yaml",

        -- other
        "vimdoc",
  		},
  	},
  },

  {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    config = function ()
      require("gitsigns").setup({
        current_line_blame = true
      })
    end
  },

  {"github/copilot.vim"},

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "kylechui/nvim-surround",
    lazy = false,
    config = function ()
      require("nvim-surround").setup({})
    end
  },
}
