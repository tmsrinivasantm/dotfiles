-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
	{
		'tpope/vim-fugitive'
	},
}

------------------------------------------------------------ Keybinds -------------------------------------------------------------------

lvim.builtin.which_key.mappings['w'] = {}

-- c to blackhole
lvim.keys.normal_mode['c'] = '"_c'
lvim.keys.visual_mode['c'] = '"_c'
lvim.keys.normal_mode['C'] = '"_C'
-- s to blackhole
lvim.keys.normal_mode['s'] = '"_s'
lvim.keys.visual_mode['s'] = '"_s'
lvim.keys.normal_mode['S'] = '"_S'
-- x to blackhole
lvim.keys.normal_mode['x'] = '"_x'
lvim.keys.visual_mode['x'] = '"_x'
-- vertical split
lvim.builtin.which_key.mappings['w'] = {
  "Window",
  v = {"<cmd>vsplit<CR>", "vertical split"},
  s = {"<cmd>split<CR>", "horizontal split"},
}
-- window close
lvim.keys.normal_mode['<leader>wc'] = '<C-w>c'
-- scratch buffer
local function scratchBuffer ()
  vim.cmd("belowright 17 split /tmp/scratch.txt")
  vim.cmd("setlocal buftype=nofile")
  vim.cmd("setlocal bufhidden=hide")
  vim.cmd("setlocal noswapfile")
  vim.cmd("set nonu")
end
lvim.keys.normal_mode['<leader>x'] = scratchBuffer
--Git
lvim.builtin.which_key.mappings['g'] = {
  "Git",
  g = {"<cmd>vertical G<CR>", "Git status"},
  b = {"<cmd>G blame<cr>", "git blame"},
  r = {"<cmd>Gitsigns reset_hunk<cr>", "revert hunk"}
}

vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4 -- insert 2 spaces for a tab
-----------------------------------------------------------------------------------------------------------------------------------------

