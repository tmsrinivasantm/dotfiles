-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = { {
        'tpope/vim-fugitive' },
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            require("rose-pine").setup({
                variant = "auto", -- auto, main, moon, or dawn
                dark_variant = "main", -- main, moon, or dawn
                dim_inactive_windows = false,
                extend_background_behind_borders = true,

                enable = {
                    terminal = true,
                    legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
                    migrations = true, -- Handle deprecated options automatically
                },
                styles = {
                    bold = true,
                    italic = true,
                    transparency = true,
                },

                groups = {
                    border = "muted",
                    link = "iris",
                    panel = "surface",

                    error = "love",
                    hint = "iris",
                    info = "foam",
                    note = "pine",
                    todo = "rose",
                    warn = "gold",

                    git_add = "foam",
                    git_change = "rose",
                    git_delete = "love",
                    git_dirty = "rose",
                    git_ignore = "muted",
                    git_merge = "iris",
                    git_rename = "pine",
                    git_stage = "iris",
                    git_text = "rose",
                    git_untracked = "subtle",

                    h1 = "iris",
                    h2 = "foam",
                    h3 = "rose",
                    h4 = "gold",
                    h5 = "pine",
                    h6 = "foam",
                },

                pallete = {
                    -- Override the builtin palette per variant
                    -- moon = {
                    --     base = '#18191a',
                    --     overlay = '#363738',
                    -- },
                },

                highlight_groups = {
                    Comment = { fg = "#575757" },
                    -- VertSplit = { fg = "muted", bg = "muted" },
                },

                before_highlight = function(group, highlight, palette)
                    -- Disable all undercurls
                    -- if highlight.undercurl then
                    --     highlight.undercurl = false
                    -- end
                    --
                    -- Change palette colour
                    -- if highlight.fg == palette.pine then
                    --     highlight.fg = palette.foam
                    -- end
                end,
            })

            vim.cmd("colorscheme rose-pine")
            -- vim.cmd("colorscheme rose-pine-main")
            -- vim.cmd("colorscheme rose-pine-moon")
            -- vim.cmd("colorscheme rose-pine-dawn")
        end,
    }
}

------------------------------------------------------------ AutoCommands ---------------------------------------------------------------

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
        vim.api.nvim_set_hl(0, "Visual", { bg = "#56526e" })
        vim.api.nvim_set_hl(0, "LspReferenceText", { bg = "#2E3440" })
        vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = "#2E3440" })
        vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = "#2E3440" })
	end,
})

------------------------------------------------------------ Keybinds -------------------------------------------------------------------

lvim.builtin.bufferline.active = false
lvim.builtin.which_key.mappings['w'] = {}
lvim.transparent_window = true;
lvim.colorscheme = 'rose-pine-main'

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
    v = { "<cmd>vsplit<CR>", "vertical split" },
    s = { "<cmd>split<CR>", "horizontal split" },
}
-- window close
lvim.keys.normal_mode['<leader>wc'] = '<C-w>c'
-- scratch buffer
local function scratchBuffer()
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
    g = { "<cmd>vertical G<CR>", "Git status" },
    b = { "<cmd>G blame<cr>", "git blame" },
    r = { "<cmd>Gitsigns reset_hunk<cr>", "revert hunk" }
}

vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4    -- insert 2 spaces for a tab
-----------------------------------------------------------------------------------------------------------------------------------------
