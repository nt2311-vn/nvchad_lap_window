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
}
vim.keymap.set("i", "<C-as>", 'copilot#Accept("<CR>")', {
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

vim.keymap.set("i", "<leader>cn", "copilot#Next()", {
  noremap = true,
  silent = true,
  expr = true,
  replace_keycodes = false,
})
vim.keymap.set("i", "<leader>cp", "copilot#Previous()", {
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
