-- ======================================== --
-- ==             SETTINGS               == --
-- ======================================== --

vim.opt.updatetime = 100
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.showtabline = 1
vim.opt.foldlevelstart = 99
vim.opt.belloff = all

vim.g.mapleader = " "
vim.g.ackprg = "rg --vimgrep --no-heading -g!tags -g!log*"


-- ======================================== --
-- ==             COMMANDS               == --
-- ======================================== --

vim.api.nvim_create_autocmd(
    { "BufRead", "BufNewFile" },
    { pattern = { "*.tpp" }, command = "set filetype=cpp" }
)

vim.api.nvim_create_autocmd(
  { "BufWritePre" },
  { pattern = { "*" }, command = [[%s/\s\+$//e]] }
)

