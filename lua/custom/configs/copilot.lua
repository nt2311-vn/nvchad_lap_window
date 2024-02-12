vim.g.copilot_filetypes = {
  "javascript",
  "lua",
  "python",
  "go",
  "typescript",
  "yaml",
  "rust",
  "c",
  "cpp",
  "csharp",
  "java",
  "html",
  "css",
  "markdown",
}
vim.keymap.set("i", "<C>as", 'copilot#Accept("<CR>")', {
  noremap = true,
  silent = true,
  expr = true,
  replace_keycodes = false,
})

vim.keymap.set("n", "<leader>cc", "copilot#Complete()", {
  noremap = true,
  silent = true,
  expr = true,
  replace_keycodes = false,
})

vim.keymap.set("n", "<leader>cd", ":Copilot disable<CR>", {
  noremap = true,
  silent = true,
  expr = true,
  replace_keycodes = false,
})

vim.keymap.set("n", "<leader>ce", ":Copilot enable<CR>", {
  noremap = true,
  silent = true,
  expr = true,
  replace_keycodes = false,
})

vim.keymap.set("i", "<C>an", "copilot#Next()", {
  noremap = true,
  silent = true,
  expr = true,
  replace_keycodes = false,
})
vim.keymap.set("i", "<C>ap", "copilot#Previous()", {
  noremap = true,
  silent = true,
  expr = true,
  replace_keycodes = false,
})

vim.keymap.set("n", "<leader>pp", ":Copilot panel<CR>", {
  noremap = true,
  silent = true,
  expr = false,
  replace_keycodes = false,
})

vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
