vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

vim.lsp.enable({
    'lua_ls',
    'pylsp',
})
