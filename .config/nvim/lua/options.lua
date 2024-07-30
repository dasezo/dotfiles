require "nvchad.options"

-- VIM & plugins options

local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
o.relativenumber = true
o.signcolumn = "yes" -- always show the signcolumn
o.foldcolumn = "1" -- '0' is not bad
o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
o.foldlevelstart = 99
o.foldenable = true

require("nvim-highlight-colors").setup {
  ---Highlight tailwind colors, e.g. 'bg-blue-500'
  enable_tailwind = true,
}

require("cmp").setup {
  formatting = {
    format = require("nvim-highlight-colors").format,
  },
}

require("mini.move").setup()
