vim.g.mapleader = ' '
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local opts = { noremap = true, silent = true }

--Remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", opts)

-- Normal --
-- Better window navigation
vim.api.nvim_set_keymap('n', "<C-d>", "<C-d>zz", opts)
vim.api.nvim_set_keymap('n', "<C-u>", "<C-u>zz", opts)

-- Tabs
-- Move to previous/next
vim.api.nvim_set_keymap('n', 'gj', '<Cmd>BufferPrevious<CR>', opts)
vim.api.nvim_set_keymap('n', 'gk', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
vim.api.nvim_set_keymap('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
vim.api.nvim_set_keymap('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
vim.api.nvim_set_keymap('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
vim.api.nvim_set_keymap('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
vim.api.nvim_set_keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)

-- Resize with arrows
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize +2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize -2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


