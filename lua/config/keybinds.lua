local map = vim.keymap.set

map('n', '<Space>e', '<Cmd>Neotree toggle<CR>', { desc = 'Open NeoTree' })
map('n', '<Space>w', '<Cmd>w<CR>', { desc = 'Save buffer' })

map('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
map('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })
map('n', '<C-j>', '<C-w>j', { desc = 'Move to bottom window' })
map('n', '<C-k>', '<C-w>k', { desc = 'Move to top window' })
map('n', '<Space>c', '<Cmd>bp|bd #<CR>', { desc = 'Close current buffer' })

map('i', 'jj', '<Esc>')

map('n', '<Space>ld', function()
    vim.diagnostic.open_float()
end, { desc = 'LSP Diagnostics' })

map('n', '<Space>la', function()
    vim.lsp.buf.code_action()
end, { desc = 'LSP Code Actions' })

map('n', 'K', function()
    vim.lsp.buf.hover()
end, { desc = 'LSP Hover' })

map('n', '<Space>fw', '<Cmd>Telescope live_grep<CR>', { desc = 'Telescope search' })
