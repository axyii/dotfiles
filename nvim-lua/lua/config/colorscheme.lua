local utils = require('utils')

utils.opt('o', 'termguicolors', true)


--Tokyonight
--vim.g.tokyonight_style = "night" --Available storm,night,day
--vim.g.tokyonight_italic_functions = true
--vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
--vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
--vim.cmd[[colorscheme tokyonight]]

--OneDark
--Available dark,darker,cool,deep,warm,warmer
require('onedark').setup {
    style = 'darker'
}
require('onedark').load()
