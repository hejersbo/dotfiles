vim.cmd[[colorscheme nord]]

-- Nord config
vim.g.nord_contrast = true
vim.g.nord_borders = true
vim.g.nord_disable_background = false
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = false

-- Load the nord.nvim colorscheme
-- require('nord').set()

require('lualine').setup({
  options = {
    icons_enabled = false,
    theme = 'nord',
    component_separators = '|',
    section_separators = '',
  },
})

require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.nvim_workspace()
lsp.setup()
