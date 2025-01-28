local opts = { noremap = true, silent = true}

vim.api.nvim_set_keymap('v', 'y', '"+y', opts)
vim.api.nvim_set_keymap('n', 'y', '"+y', opts)

vim.api.nvim_set_keymap('n', '<leader>h', ':nohlsearch<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>to', ':tabnew<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>tx', ':tabclose<CR>', opts)

vim.api.nvim_set_keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.api.nvim_set_keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.api.nvim_set_keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.api.nvim_set_keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

vim.api.nvim_set_keymap('n', '<Tab>', ':tabnext<CR>', opts)
vim.api.nvim_set_keymap('n', '<S-Tab>', ':tabprevious<CR>', opts)

vim.api.nvim_set_keymap('n', 'x', '"_x', opts)
vim.api.nvim_set_keymap('v', 'x', '"_x', opts)

vim.api.nvim_set_keymap('n', 'd', '"_d', opts)
vim.api.nvim_set_keymap('n', 'dd', '"_dd', opts)

vim.api.nvim_set_keymap('v', 'd', '"_d', opts)
vim.api.nvim_set_keymap('v', 'dd', '"_dd', opts)
