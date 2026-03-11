-- Keybinds

-- Format
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

-- Go to ...
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
vim.keymap.set('n', 'gr', vim.lsp.buf.references)

-- Show function params
vim.keymap.set({ 'n', 'i' }, '<C-k>', vim.lsp.buf.signature_help)

-- Show documentation
-- vim.keymap.set('n', 'K', vim.lsp.buf.hover)

-- Rename across project
-- vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)

-- Code actions (quick fix, fix imports, suggestions)
-- vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action)

-- View errors as list window
vim.keymap.set('n', '<leader>le', vim.diagnostic.setloclist)

-- View error after hovering
vim.o.updatetime = 500
vim.api.nvim_create_autocmd('CursorHold', {
    callback = function()
        vim.diagnostic.open_float(nil, { focus = false })
    end
})

-- List lsps as their cmd
vim.lsp.enable({
    'lua_ls',
    --    'pylsp', -- Disable for now since it isnt installed
    'clangd',
})
