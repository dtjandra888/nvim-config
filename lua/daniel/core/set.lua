-- There is some vulnerability with modeline
vim.opt.modeline = false

-- Line numbers
vim.opt.nu = true
vim.opt.rnu = true

-- Fixing tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Internal file searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

-- function TabPage()
--     local current_tabpage = vim.api.nvim_get_current_tabpage()
--     return current_tabpage
-- end
--
-- vim.cmd(string.format("autocmd FileType netrw nmap <buffer> <CR> t<leader>%d:q<CR>"), TabPage() - 1)
