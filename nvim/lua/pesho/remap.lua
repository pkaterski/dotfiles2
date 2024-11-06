
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('i', 'jk', '<ESC>', { desc = 'Exit insert mode' })

-- for terminal escaping
vim.keymap.set('t', '<ESC>', "<C-\\><C-n><C-w>h",{silent = true})
vim.keymap.set('t', 'jk', "<C-\\><C-n><C-w>h",{silent = true})
