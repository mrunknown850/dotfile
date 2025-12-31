return {
  require "plugins.dap",
  require "plugins.formatting",
  require "plugins.cphelper",
  require "plugins.markdown-preview",
  require "plugins.lsp",
  require "plugins.treesitter",
  require "plugins.auto-session",
  {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.veimtex_compiler_latexmk = {
        continuous = 1,
        executable = "latexmk",
        options = {
          "-lualatex",
          "-interaction=nonstopmode",
          "-synctex=1"
        }
      }
      vim.g.vimtex_view_method = "zathura"
  end
},
  {
    "rcarriga/nvim-dap-ui",
    config = function() end,
  },
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
  {
    "sindrets/diffview.nvim",
    lazy = false,
  },
}
