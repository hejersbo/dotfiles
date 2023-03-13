local hejersbollvm = vim.api.nvim_create_augroup("hejersbollvm", {})

local autocmd = vim.api.nvim_create_autocmd
autocmd("FileType", {
    group = hejersbollvm,
    pattern = "*",
    callback = function()
        if vim.bo.ft ~= "llvm" then
            return
        end

        vim.cmd[[nmap <buffer><silent>gd m'<Plug>(llvm-goto-definition)]]
    end,
})
