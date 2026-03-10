
local builtin = require('telescope.builtin')

-- Keybinds
-- Find file my filename
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- Find file in git files
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
-- Find file in open tabs
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

-- Find help tags
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- find currently selected word
vim.keymap.set('n', '<leader>fw', function()
    local word = vim.fn.expand("<cword>")
    builtin.grep_string({ search = word })
end)
vim.keymap.set('n', '<leader>fi', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
