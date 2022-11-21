-- ======================================== --
-- ==             KEY MAPPINNGS          == --
-- ======================================== --

vim.keymap.set('i', 'jk', '<Esc>')

-- rg mappings
vim.keymap.set('n', '<leader>g', ':Ack <C-R>=expand("<cword>")<CR><CR>')
vim.keymap.set('n', '<leader>R', ':Ack<Space>')

-- Fugitive mappings
vim.keymap.set('n', '<leader>gs', ':Gstatus<CR>')
vim.keymap.set('n', '<leader>gb', ':Gblame<CR>')

-- FZF mappings
vim.keymap.set('n', '<leader>t', ':Tags<CR>')
vim.keymap.set('n', '<leader>b', ':Buffers<CR>')
vim.keymap.set('n', '<leader>f', ':Files<CR>')
vim.keymap.set('n', '<leader>h', ':Helptags<CR>')

-- Close quickfix window
vim.keymap.set('n', '<leader>c', ':ccl<CR>')
