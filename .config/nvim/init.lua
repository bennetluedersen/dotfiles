vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set('i', 'jjk', '<ESC>')
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.signcolumn = 'yes'
vim.o.so = 21
vim.g.have_nerd_font = true
vim.o.mouse = 'a'

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)
vim.o.undofile = true
vim.o.cursorline = true
vim.o.confirm = true

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
