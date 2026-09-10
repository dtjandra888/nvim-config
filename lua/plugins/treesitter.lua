require('nvim-treesitter').install({
    'cpp',
    'rust',
    'svelte'
})


-- NOTE: I don't know what I did, but svelte treesitter works now. 
-- do not touch this :)
vim.api.nvim_create_autocmd("FileType", {
    pattern = "svelte",
    callback = function()
        vim.treesitter.start()
        vim.defer_fn(function()
            local parser = vim.treesitter.get_parser()
        end, 100)
    end,
})
