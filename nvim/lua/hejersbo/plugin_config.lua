vim.cmd('colorscheme nord')

require('lualine').setup({
  options = {
    icons_enabled = false,
    theme = 'nord',
    component_separators = '|',
    section_separators = '',
  },
})

-- Start interactive EasyAlign in visual mode (e.g. vipga)
--xmap ga <Plug>(EasyAlign)

-- Start interactive EasyAlign for a motion/text object (e.g. gaip)
--nmap ga <Plug>(EasyAlign)
