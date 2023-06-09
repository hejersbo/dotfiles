local lsp = require("lsp-zero")

lsp.preset("recommended")

-- lua_ls setup
lsp.configure('lua_ls', {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
})

-- clangd setup
local project_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ':p')
lsp.configure('clangd', {
  cmd = {
    'clangd',
    '--compile-commands-dir=' .. project_dir
  }
})

-- jdtls setup (if commented in you must outcomment the ftplugin/java.lua)
--
-- local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
-- local config_dir = '/home/hejersbo/.cache/jdtls/config/' .. project_name
-- local workspace_dir = '/home/hejersbo/.cache/jdtls/workspace/' .. project_name

-- lsp.configure('jdtls', {
--   cmd = {
--     'jdtls',
--     '-configuration', config_dir,
--     '-data', workspace_dir,
--   },
--   root_dir = function()
--     return vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[1])
--   end
-- })

-- nvim-cmp setup
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<Enter>'] = cmp.mapping.confirm({ select = true }),
  -- ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})
local cmp_sources = {
  {name = 'path'},
  {name = 'nvim_lsp', keyword_length = 3},
  {name = 'buffer', keyword_length = 3},
  {name = 'luasnip', keyword_length = 2},
}

lsp.setup_nvim_cmp({
  mapping = cmp_mappings,
  sources = cmp_sources
})

lsp.ensure_installed({
  'clangd',
  'lua_ls'
})

lsp.set_preferences({
    suggest_lsp_servers = false,
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
lsp.capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities);

lsp.on_attach(require('hejersbo.lsp_on_attach'))

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})
