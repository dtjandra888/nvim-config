local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })

    -- Autoformats but must only have ONE lsp attached to file at a time
    lsp.buffer_autoformat()
end)

lsp.setup()

require("mason").setup()
require('mason-lspconfig').setup({
    ensure_installed = {
        'pylsp',
        'lua_ls',
        --         'gopls',
        'clangd'
    }
})

-- local cmp = require('cmp')

-- cmp.setup({})

require 'lspconfig'.pylsp.setup {}
require 'lspconfig'.lua_ls.setup {}
-- require 'lspconfig'.gopls.setup {}
require 'lspconfig'.clangd.setup {}
