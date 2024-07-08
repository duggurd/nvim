return {
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },
--  {
--     "nvimtools/none-ls.nvim",
--     event = "VeryLazy",
--     opts = function()
--       return require("configs.null-ls")
--     end
--  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
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
        "typescript-language-server",
        "tailwindcss-language-server",
        "eslint-lsp",
        "tsserver",
        "prettierd",
        "pyright",
        "terraform-ls",
      },
    },
  },
  
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", 
         "lua", 
         "vimdoc",
         "html", 
         "css", 
         "hcl",
         "javascript",
         "typescript",
         "tsx",
  		},
  	},
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
    	    visible = true,
    	    show_hidden_count = true,
    	    hide_dotfiles = false,
    	    hide_gitignored = true,
    	    hide_by_name = {
    	      -- '.git',
    	      -- '.DS_Store',
    	      -- 'thumbs.db',
    	    },
    	    never_show = {},
        },
      }
    }
  },
} 
