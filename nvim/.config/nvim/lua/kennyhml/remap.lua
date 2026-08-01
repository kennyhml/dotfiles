-- First thing that should be set!
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>pv', '<cmd>Oil<CR>', { desc = 'Open the [P]roject [V]iwer' })

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Remove highlightings with escape (usually mode swap)
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Preserve selection when indenting / dedenting
vim.keymap.set('v', '>', '>gv', { noremap = true, silent = true })
vim.keymap.set('v', '<', '<gv', { noremap = true, silent = true })

-- Remove carriage returns when pasting (WSL grrrr)
vim.keymap.set('n', 'p', function()
  vim.cmd 'normal! p'
  vim.cmd [[%s/\r//ge]]
end, { noremap = true })

-- Same paste behavior when we paste over a text selection
vim.keymap.set({ 'n', 'x' }, 'P', [[P<Cmd>silent! keepjumps keeppatterns %s/\r//g<CR>]], {
  noremap = true,
  desc = 'Paste without carriage returns',
})
