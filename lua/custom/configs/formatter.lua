local formatter = require "formatter"
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

formatter.setup {
  filetype = {
    html = { require("formatter.filetypes.html").prettier },
    css = { require("formatter.filetypes.css").prettier },
    svelte = { require("formatter.filetypes.svelte").prettier },
    vue = { require("formatter.filetypes.vue").prettier },
    ["*"] = { require("formatter.filetypes.any").remove_trailing_whitespace },
  },
}

augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
  group = "__formatter__",
  command = ":FormatWrite",
})
