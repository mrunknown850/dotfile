local opts = {
  formatters_by_ft = {
    lua = { "stylua" },
    cpp = { "clang_format" },
    c = { "clang_format" },
    python = { "black" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return opts
