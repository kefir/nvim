local dap = require('dap')
local vscode = require('dap.ext.vscode')

-- Configuration for C/C++/asm via .vscode/launch.json 

dap.adapters.cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    -- commanmd should point to 
    command = '/home/kefir/.local/share/nvim/mason/bin/OpenDebugAD7',
}

vscode.load_launchjs(nil, { cppdbg = {'c', 'cpp', 'asm'} })

-- Universal C/C++/asm configuration
-- dap.configurations.cpp = {
--     {
--         name = "Launch file",
--         type = "cppdbg",
--         request = "launch",
--         program = function()
--             return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--         end,
--         cwd = '${workspaceFolder}',
--         stopAtEntry = true,
--     },
-- }
-- dap.configurations.c = dap.configurations.cpp
-- dap.configurations.asm = dap.configurations.cpp

vim.keymap.set('n', '<F5>', function() dap.continue() end)
vim.keymap.set('n', '<F10>', function() dap.step_over() end)
vim.keymap.set('n', '<F11>', function() dap.step_into() end)
vim.keymap.set('n', '<F12>', function() dap.step_out() end)
vim.keymap.set('n', '<leader>b', function() dap.toggle_breakpoint() end)
