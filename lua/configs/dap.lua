local dap = require("dap")
local dapui = require("dapui")

-- Listeners
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end

dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end

dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

-- Adaptors
dap.adapters.gdb = {
  type = "executable",
  command = "gdb",
  args = { "-i", "dap" },
}

-- Configurations
local config = {
  {
    name = "Launch",
    type = "gdb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    args = {},
  }
}

dap.configurations.rust = config
dap.configurations.c = config
dap.configurations.cpp = config
dap.configurations.zig = config

-- DAP colors
vim.api.nvim_set_hl(0, "DapBreakpoint", { ctermbg = 0, fg = "#993939", bg = "#e49b0f" })
vim.api.nvim_set_hl(0, "DapBreakpointRejected", { ctermbg = 0, fg = "#afe1af", bg = "#993939" })
vim.api.nvim_set_hl(0, "DapLogPoint", { ctermbg = 0, fg = "#61afef", bg = "#31353f" })
vim.api.nvim_set_hl(0, "DapStopped", { ctermbg = 0, fg = "#afe1af", bg = "#355e3b" })

vim.fn.sign_define("DapBreakpoint",
  { text = " ", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" })

vim.fn.sign_define("DapBreakpointCondition",
  { text = " ", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" })

vim.fn.sign_define("DapBreakpointRejected",
  { text = " ", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" })

vim.fn.sign_define("DapLogPoint",
  { text = " ", texthl = "DapLogPoint", linehl = "DapLogPoint", numhl = "DapLogPoint" })

vim.fn.sign_define("DapStopped",
  { text = " ", texthl = "DapStopped", linehl = "DapStopped", numhl = "DapStopped" })
