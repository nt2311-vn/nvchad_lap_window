local tokyonight = require "tokyonight"

tokyonight.setup {
  style = "moon",
  transparent = true,

  -- style
  styles = {
    comments = { italic = false },
    keywords = { italic = false, bold = true },
    functions = { italic = false, bold = true },
  },
}

vim.cmd [[colorscheme tokyonight-moon]]
