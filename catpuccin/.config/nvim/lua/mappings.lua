require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<Leader>ca", function()
  vim.lsp.buf.code_action()
end, { desc = "LSP Code Action" })

-- DAP mapping
vim.keymap.set("n", "<F5>", function()
  require("dap").continue()
end, { desc = "DAP Continue" })
vim.keymap.set("n", "<F8>", function()
  require("dap").step_over()
end, { desc = "DAP Step Over" })
vim.keymap.set("n", "<F9>", function()
  require("dap").step_into()
end, { desc = "DAP Step Into" })
vim.keymap.set("n", "<F7>", function()
  require("dap").step_out()
end, { desc = "DAP Step Out" })
vim.keymap.set("n", "<F12>", function()
  require("dap").terminate()
end, { desc = "DAP Terminate" })

vim.keymap.set("n", "<Leader>`", function()
  require("dap").toggle_breakpoint()
end, { desc = "DAP Toggle Breakpoint" })
vim.keymap.set("n", "<Leader>~", function()
  require("dap").set_breakpoint(vim.fn.input "Breakpoint condition: ")
end, { desc = "DAP Conditional Breakpoint" })

require("dapui").setup()
local dap, dapui = require "dap", require "dapui"
dap.listeners.after.event_initialized["dapui_config"] = function()
  print "Initialized DAP"
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  print "Terminated DAP"
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  print "Exited DAP"
  dapui.close()
end

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
