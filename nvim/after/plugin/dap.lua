local dap = require('dap')
dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode-15', -- adjust as needed, must be absolute path
  name = 'lldb'
}

dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {"build/examples/initialize_singleWaterTank/cpp/llvm-ir/sim_bc/co-sim.cxx.bc"},

    -- 💀
    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    runInTerminal = true,
  },
}

-- If you want to use this for Rust and C, add something like this:

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

vim.keymap.set('n', '<leader>C', require('dap').continue, { desc = 'Dap [C]ontinue' })
vim.keymap.set('n', '<leader>O', require('dap').step_over, { desc = 'Dap Step [O]ver' })
vim.keymap.set('n', '<leader>I', require('dap').step_into, { desc = 'Dap Step [I]nto' })
vim.keymap.set('n', '<leader>T', require('dap').step_out, { desc = 'Dap Step Ou[T]' })
vim.keymap.set('n', '<leader>B', require('dap').toggle_breakpoint, { desc = 'Dap toggle [B]reakpoint' })
