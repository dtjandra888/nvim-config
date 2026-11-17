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

vim.lsp.config('svelte', {
    cmd = { 'bunx', 'svelteserver', '--stdio' },
    filetypes = { 'svelte' },
    root_markers = {
        'svelte.config.js',
        'svelte.config.ts',
        'package.json',
        '.git',
    },
})

-- No lsp-config for rust apparently
vim.lsp.config('rust-analyzer', {
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' },
    root_markers = { 'Cargo.toml', '.git' },
    settings = {
        ['rust-analyzer'] = {
            cargo = {
                allFeatures = true,
            },
            checkOnSave = {
                command = "clippy",
            },
        },
    },
})


-- Prefer Espressif's clangd fork: stock clangd doesn't understand Xtensa
-- flags like -mlongcalls. It is a full clangd, so it works for non-ESP C/C++ too.
-- The glob picks up the newest installed version; falls back to system clangd.
local esp_clangd = vim.fn.glob(vim.fn.expand('~/.espressif/tools/esp-clangd/*/esp-clangd/bin/clangd'), false, true)
vim.lsp.config('clangd', {
    cmd = {
        esp_clangd[#esp_clangd] or 'clangd',
        '--background-index',
        -- Let clangd ask the ESP cross-compilers (gcc and g++, any target) for their system include paths
        '--query-driver=' .. os.getenv('HOME') .. '/.espressif/tools/*-esp-elf/*/*-esp-elf/bin/*-elf-*',
    },
})

-- List lsps as their cmd
vim.lsp.enable({
    'lua_ls',
    'pylsp',
    'clangd',
    'svelte',
    'rust-analyzer',
})
