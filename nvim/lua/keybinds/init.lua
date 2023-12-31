-- KeyBinds

-- leader
vim.g.mapleader = " ";

-- go from file to directory mode
vim.keymap.set("n", "<leader>bk", vim.cmd.bdelete);
vim.keymap.set("n", "<leader>bK", ":bd!<CR>");
vim.keymap.set("n", "<leader>bl", ":b #<CR>");

-- telescope
local builtin = require('telescope.builtin')
-- telescope_find_file_hidden = function()
--   builtin.find_files {
--     find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden' },
--     previewer = false
--   }
-- end
vim.keymap.set('n', '<leader>.', builtin.find_files, {})
vim.keymap.set('n', '<leader>fP', string.format("<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '%s/.config/nvim'}})<cr>", vim.env.HOME),{})
vim.keymap.set('n', '<leader>fh', string.format("<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '%s'}})<cr>", vim.env.HOME),{})
vim.keymap.set('n', '<leader> ', builtin.git_files, {})

-- Git
vim.keymap.set('n', '<leader>gg', vim.cmd.Git)
vim.keymap.set('n', '<leader>gg', vim.cmd.Git)

-- vSplit
vim.keymap.set('n', '<leader>wv', vim.cmd.vsplit)
vim.keymap.set('n', '<leader>wV', '<C-w>v<C-w>l')

-- hSplit
vim.keymap.set('n', '<leader>ws', vim.cmd.split)
vim.keymap.set('n', '<leader>wS', '<C-w>s<C-w>j')

-- window-focus-left
vim.keymap.set('n',  '<Leader>wh', '<C-w><C-h>')

-- window-focus-right
vim.keymap.set('n',  '<Leader>wl', '<C-w><C-l>')

-- window-focus-up
vim.keymap.set('n',  '<Leader>wk', '<C-w><C-k>')

-- window-focus-left
vim.keymap.set('n',  '<Leader>wj', '<C-w><C-j>')

-- window-close
vim.keymap.set('n',  '<Leader>wc', '<C-w>c')

-- comment
vim.keymap.set('n', '<C-_>', vim.cmd.Commentary)
vim.keymap.set('v', '<C-_>', ":Commentary<CR>")
vim.keymap.set('i', '<C-_>', vim.cmd.Commentary)

-- c to blackhole
vim.keymap.set('n', 'c', '"_c')
vim.keymap.set('v', 'c', '"_c')
vim.keymap.set('n', 'C', '"_C')

-- s to blackhole
vim.keymap.set('n', 's', '"_s')
vim.keymap.set('v', 's', '"_s')
vim.keymap.set('n', 'S', '"_S')

-- x to blackhole
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('v', 'x', '"_x')

-- scratch buffer
local function scratchBuffer ()
  vim.cmd("belowright 17 split /tmp/scratch.txt")
  vim.cmd("setlocal buftype=nofile")
  vim.cmd("setlocal bufhidden=hide")
  vim.cmd("setlocal noswapfile")
  vim.cmd("set nonu")
end
vim.keymap.set('n', '<Leader>x', scratchBuffer)

-- delete current file
vim.keymap.set('n', '<Leader>fD', ":!rm %")

--  Select buffer
vim.keymap.set('n', '<C-x><C-p>', "ggVG")
