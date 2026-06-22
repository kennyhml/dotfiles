require 'kennyhml'

vim.opt.guicursor = 'a:block'
vim.g.have_nerd_font = true -- Jetbrains Mono
vim.o.relativenumber = true
vim.o.laststatus = 0 -- no status line
vim.o.showmode = false
vim.o.cursorline = true
vim.o.scrolloff = 20
vim.o.mouse = 'a'
vim.o.confirm = true
vim.opt.wrap = false

vim.o.undofile = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.inccommand = 'split'
vim.o.signcolumn = 'yes'

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

-- Swap panes with control + arrow keys, that combination is unused anyway
vim.keymap.set('n', '<C-Left>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-Down>', '<C-w>j', { desc = 'Move to lower window' })
vim.keymap.set('n', '<C-Up>', '<C-w>k', { desc = 'Move to upper window' })
vim.keymap.set('n', '<C-Right>', '<C-w>l', { desc = 'Move to right window' })

-- Keep the selection when indenting / dedenting
vim.keymap.set('v', '>', '>gv', { noremap = true, silent = true })
vim.keymap.set('v', '<', '<gv', { noremap = true, silent = true })

-- Searching
vim.o.ignorecase = true
vim.o.smartcase = true

-- Sync clipboard between OS and Neovim.
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Diagnostic Config & Keymaps
vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },

  virtual_text = true, -- Basically like the error lens extension for vscode

  -- Read the errors when jumping with `[d` and `]d`
  jump = { float = true },
}

-- Highlight when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

vim.keymap.set('n', 'p', function()
  vim.cmd 'normal! p'
  vim.cmd [[%s/\r//ge]]
end, { noremap = true })

vim.keymap.set('n', 'P', function()
  vim.cmd 'normal! P'
  vim.cmd [[%s/\r//ge]]
end, { noremap = true })
