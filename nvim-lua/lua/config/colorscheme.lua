local utils = require('utils')

utils.opt('o', 'termguicolors', true)


--Tokyonight
vim.g.tokyonight_style = "night" --Available Storm,Night,Day
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]

--OneDark
--vim.g.onedark_style = 'deep' --Available Dark,Darker,Cool,Deep,Warm,Warmer
--vim.cmd[[colorscheme onedark]]
