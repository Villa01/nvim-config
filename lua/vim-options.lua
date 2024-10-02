vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<leader>gc', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>gc', '"+y', { noremap = true, silent = true })


