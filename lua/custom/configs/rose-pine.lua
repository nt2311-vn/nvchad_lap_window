local rose_pine = require "rose-pine"

rose_pine.setup {
  variant = "auto", -- auto, main, moon, or dawn
  dark_variant = "main", -- main, moon, or dawn
  dim_inactive_windows = false,
  extend_background_behind_borders = true,

  enable = {
    terminal = true,
    legacy_highlights = true,
    migrations = true,
  },

  styles = {
    bold = true,
    italic = false,
    transparency = false,
  },
}

vim.cmd "colorscheme rose-pine-main"
