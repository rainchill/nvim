vim.cmd [[ highlight link ScrollView Pmenu ]]
vim.cmd [[ highlight ScrollView ctermbg=159 guibg=LightCyan ]]

require('scrollview').setup({
    excluded_filetypes = { 'nerdtree' },
    current_only = true,
    -- winblend = 75,
    -- base = 'buffer',
    -- column = 80
})
