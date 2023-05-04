package.path = package.path .. ";/home/ubuntu/nix/nvim/lua/?.lua"
package.path = package.path .. ";/home/ubuntu/nix/nvim/?.lua"

vim.cmd("colorscheme jellybeans")

-- TODO: move to separate files
require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true,
	}
}

local hour = tonumber(os.date('%H'))
if hour < 19 then
    vim.cmd('set bg=light')
else
    vim.cmd('set bg=dark')
end

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"


--- lsp stuff
require('lsp')
require('opts')
require('snippets')
require('keymap')
require('tree')
--- Set our current base16 theme from env
--- nvim = require 'nvim'

--- Show a dot character at the end of every line
vim.opt.list = true
vim.opt.listchars:append("eol:·")
---require("indent_blankline").setup {
---	show_end_of_line = true,
---	char = "",
---	show_trailing_blankline_indent = false,
---}
