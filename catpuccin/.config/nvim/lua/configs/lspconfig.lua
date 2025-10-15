require("nvchad.configs.lspconfig").defaults()

require("nvchad.configs.lspconfig").clangd.setup {
  cmd = { "clangd", "--clang-tidy" },
  init_options = {
    clangdFileStatus = true,
    clangdTidy = true,
  },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = require("nvchad.configs.lspconfig/util").root_pattern(
    "compile_commands.json",
    "compile_flags.txt",
    ".git"
  ),
}

-- read :h vim.lsp.config for changing options of lsp servers
