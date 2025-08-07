return {
  "mfussenegger/nvim-dap",
  event = "BufReadPre",
  ft = { "cpp", "c", "rust" },
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
    "jay-babu/mason-nvim-dap.nvim",
    "nvim-neotest/nvim-nio",
  },
  config = require "configs.dap",
}
