local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

dapui.setup{
    controls = {
          element = "repl",
          enabled = true,
          icons = {
          pause = "pause",
          play = "play",
          run_last = "run_last",
          step_back = "step_back",
          step_into = "step_into",
          step_out = "step_out",
          step_over = "step_over",
          terminate = "terminate"
          }
      },
}
