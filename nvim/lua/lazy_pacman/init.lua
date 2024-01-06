local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	{
		'nvim-telescope/telescope.nvim', 
		tag = '0.1.3', dependencies = { 'nvim-lua/plenary.nvim' },
	},
	{
		'nvim-treesitter/nvim-treesitter'
	},
	{
		'tpope/vim-fugitive'
	},
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			{'hrsh7th/cmp-nvim-lsp'},
		},
	},
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			{'L3MON4D3/LuaSnip'},
		}
	},
  { 
    "catppuccin/nvim", name = "catppuccin", priority = 1000 
    -- "rose-pine/neovim", name = "rose-pine", priority = 1000 
  },
  -- {
  --   "lukas-reineke/indent-blankline.nvim" ,
  -- },
  {
    "tpope/vim-commentary" ,
  },
  {
   'windwp/nvim-autopairs',
   event = "InsertEnter",
   opts = {} -- this is equalent to setup({}) function
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
    'lewis6991/gitsigns.nvim'
  },
  -- {
  --    "kdheepak/lazygit.nvim",
  --    -- optional for floating window border decoration
  --    dependencies = {
  --        "nvim-lua/plenary.nvim",
  --    },
  -- },
})
