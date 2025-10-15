return function()
  local dap = require "dap"
  dap.adapters.cppdbg = {
    id = "cppdbg",
    type = "executable",
    command = "/home/MrUnknown850/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7",
  }
  dap.configurations.cpp = {
    {
      name = "Launch",
      type = "cppdbg",
      request = "launch",
      program = function()
        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
      end,
      cwd = "${workspaceFolder}",
      stopOnEntry = false,
      args = {},
      MIMode = "gdb",
      miDebuggerPath = "/usr/bin/gdb",
    },
  }

  dap.configurations.c = dap.configurations.cpp
end
