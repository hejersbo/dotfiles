local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local config_dir = '/home/hejersbo/.cache/jdtls/config/' .. project_name
local workspace_dir = '/home/hejersbo/.cache/jdtls/workspace/' .. project_name

local config = {
    on_attach = require('hejersbo.lsp_on_attach'),
    cmd = {
        '/home/hejersbo/jdtls/bin/jdtls',
        '-configuration', config_dir,
        '-data', workspace_dir,
    },
    root_dir = vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
