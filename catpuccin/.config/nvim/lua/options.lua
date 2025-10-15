require "nvchad.options"

vim.api.nvim_set_hl(0, "DapBreakpoint", { fg = "#FF5555" })

vim.api.nvim_create_user_command("DapTerminateAndClose", function()
  require("dap").terminate()
  require("dapui").close()
end, {})
-- vim.api.nvim_create_user_command("DapBuildAndLaunch", function()
--   build_project()
--   require("dap").continue()
-- end, {})
--
-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
