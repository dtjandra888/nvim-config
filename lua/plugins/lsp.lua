-- Keybinds
-- Format
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

-- View error on cursor
vim.keymap.set({ 'n', 'i'}, "<C-e>", vim.diagnostic.open_float)

-- View error after hovering
vim.o.updatetime = 500
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end
})

-- View errors as list window
vim.keymap.set('n', '<leader>le', vim.diagnostic.setloclist)

-- List lsps as their cmd
vim.lsp.enable({
    'lua_ls',
    --    'pylsp', -- Disable for now since it isnt installed
    'clangd',
})
