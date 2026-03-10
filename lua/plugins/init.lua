-- Main packages listed here
vim.pack.add({
    'https://github.com/nvim-telescope/telescope.nvim',
    'https://github.com/sainnhe/sonokai',
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/nvim-lua/plenary.nvim',
})

-- Configuration in separate files
require("plugins.colorscheme")
require("plugins.lsp")
require("plugins.telescope")
