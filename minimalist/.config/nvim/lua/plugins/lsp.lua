local function cf()
  require("nvchad.configs.lspconfig").defaults()

  local servers = { "html", "cssls", "pyright", "clangd", "rust-analyzer" }
  vim.lsp.enable(servers)

  local lspconfig = require "lspconfig"
  local capabilities = require("cmp_nvim_lsp").default_capabilities()

  lspconfig.clangd.setup {
    cmd = { "clangd", "--clang-tidy" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
  }

  lspconfig.rust_analyzer.setup {
    capabilities = capabilities,
    settings = {
      ["rust-analyzer"] = {
        cargo = { allFeatures = true },
        checkOnSave = true,
      },
    },
  }
end

return {
  "neovim/nvim-lspconfig",
  config = cf(),
}
