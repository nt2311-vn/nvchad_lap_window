local tokyonight = require "tokyonight"

tokyonight.setup {
  style = "night",
  transparent = true,

  -- style
  styles = {
    comments = { italic = false },
    keywords = { italic = false, bold = true },
    functions = { italic = false, bold = true },
  },
}

vim.cmd [[colorscheme tokyonight-night]]
