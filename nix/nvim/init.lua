package.path = package.path .. ";/home/$USER/nix/nvim/lua/?.lua"
package.path = package.path .. ";/home/$USER/nix/nvim/?.lua"

vim.cmd("colorscheme jellybeans")

--- lsp stuff
require('lsp')
require('opts')
require('snippets')
require('keymap')

--- require('tree')
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
