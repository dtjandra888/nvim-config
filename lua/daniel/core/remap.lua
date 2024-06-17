
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>t", vim.cmd.NvimTreeOpen)

vim.keymap.set("i", "jj", "<esc>")

vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set({"n", "v"}, "<leader>p", "\"+p")

