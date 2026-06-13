-- First thing that should be set!
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open the [P]roject [V]iwer' })

vim.keymap.set('n', 'gh', vim.lsp.buf.hover, { desc = '[G]et [H]elp (Hover documentation)' })

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Move lines up and down with J and K, I really dont care about losing the
-- line merging capabilities but this means we need to find a replacement for K
vim.keymap.set('v', '<S-Down>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<S-Up>', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', '<S-Down>', ':m .+1<CR>==')
vim.keymap.set('n', '<S-Up>', ':m .-2<CR>==')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
