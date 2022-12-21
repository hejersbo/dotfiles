require("hejersbo.set")
require("hejersbo.packer")
require("hejersbo.remap")

local augroup = vim.api.nvim_create_augroup
local hejersbogroup = augroup('hejersbo', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = hejersbogroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "*.tpp" },
    command = "set filetype=cpp"
})

vim.g.netrw_browse_split = 0
-- vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
