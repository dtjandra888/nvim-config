vim.g.mapleader = " "
vim.keymap.set("i", "jj", "<esc>")

-- Open Directory Listing
function OpenNewTab()
    vim.cmd("tabnew")
    vim.cmd("Ex")
end

vim.keymap.set("n", "<leader>t",
function()
	vim.cmd("tabnew")
	vim.cmd("Ex")
end, {noremap = true})



-- Copy/Paste from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y")
vim.keymap.set({ "n", "v" }, "<leader>p", "\"+p")

-- Remap tabs
vim.keymap.set({ "n", "v" }, "<leader>1", "1gt")
vim.keymap.set({ "n", "v" }, "<leader>2", "2gt")
vim.keymap.set({ "n", "v" }, "<leader>3", "3gt")
vim.keymap.set({ "n", "v" }, "<leader>4", "4gt")
vim.keymap.set({ "n", "v" }, "<leader>5", "5gt")
vim.keymap.set({ "n", "v" }, "<leader>6", "6gt")
vim.keymap.set({ "n", "v" }, "<leader>7", "7gt")
vim.keymap.set({ "n", "v" }, "<leader>8", "8gt")
vim.keymap.set({ "n", "v" }, "<leader>9", "9gt")
