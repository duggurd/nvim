local options = {
   formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    html = { "prettierd" },
    ts = { "prettierd" },
    js = { "prettierd" },
    jsx = { "prettierd" },
    tsx = { "prettierd" },
    json = { "prettierd" },
  },

  format_on_save = {
    timeout_ms = 1500,
    lsp_format = "fallback",
    -- lsp_fallback = true,
  },
}

require("conform").setup(options)
