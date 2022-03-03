local utils = require('utils')


utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jj', '<Esc>')           -- jj to escape
utils.map('n','<C-y>','<cmd>NvimTreeToggle<CR>')
utils.map('n','<C-j>','<cmd>bp<CR>')
utils.map('n','<C-k>','<cmd>bn<CR>')

