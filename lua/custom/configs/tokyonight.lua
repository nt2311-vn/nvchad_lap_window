local tokyonight = require "tokyonight"

tokyonight.setup {
  style = "night",
  transparent = true,

  -- style
  comments = { italic = false },
  keywords = { italic = false, bold = true },
  functions = { italic = false, bold = true },
}

vim.cmd [[colorscheme tokyonight-night]]
