local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- navegação entre panels
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)

-- divisão dos panels
map('n', '|', '<C-w>v', { desc = 'Split horizontally', unpack(opts) })
map('n', '_', '<C-w>s', { desc = 'Split vertically', unpack(opts) })

-- esc como jj
map('i', 'jj', '<esc>', { desc = 'Easy exit', unpack(opts) })

-- nvim-tree
map('n', '<Leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle tree', unpack(opts) })

-- telescope
map('n', '<Leader>ff', ':Telescope find_files<CR>', { desc = 'Find files', unpack(opts) })
map('n', '<Leader>fh', ':Telescope command_history<CR>', { desc = 'Search command history', unpack(opts) })
map('n', '<Leader>/', ':Telescope live_grep<CR>', { desc = 'GREP!', unpack(opts) })
map('n', '<Leader>fb', ':Telescope buffers<CR>', { desc = 'Find buffers', unpack(opts) })

-- lsp
map('n', '<Leader>lf', ':lua vim.lsp.buf.format()<CR>', { desc = 'Format file', unpack(opts) })

-- tabs
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', { desc = 'Prev buffer', unpack(opts) })
map('n', '<A-.>', '<Cmd>BufferNext<CR>', { desc = 'Next buffer', unpack(opts) })
map('n', '<C-p>', '<Cmd>BufferPick<CR>', { desc = 'Pick buffer', unpack(opts) } )
