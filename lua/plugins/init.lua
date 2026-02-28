-- Main packages listed here
vim.pack.add({
    'https://github.com/nvim-telescope/telescope.nvim',
    'https://github.com/sainnhe/sonokai',
    'https://github.com/neovim/nvim-lspconfig',
})

-- Configuration in separate files
require("plugins.colorscheme")
require("plugins.lsp")
