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
  "plaintext",
}
vim.keymap.set("i", "<C-;>", 'copilot#Accept("<CR>")', {
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
