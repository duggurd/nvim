return {
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "configs.null-ls"
    end,
  },
  {
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
        "lua-language-server",
        --"html-lsp",
        "typescript-language-server",
        "tailwindcss-language-server",
        "eslint-lsp",
        "tsserver",
        "prettierd",
        "stylua",
--        "yaml-language-server",
        "pyright",
        "terraform-ls",
      },
    },
  },

 {
 	"nvim-treesitter/nvim-treesitter",
 	opts = {
 		ensure_installed = {
 			"vim", "lua", "vimdoc",
      "html", "css", "hcl"
 		},
 	},
 },
 {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
    	 visible = true,
      }
    }
  }
  }
}
