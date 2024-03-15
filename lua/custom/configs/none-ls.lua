local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require "null-ls"
null_ls.setup {
  sources = {

    -- formatting
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.biome,
    null_ls.builtins.formatting.gofumpt,
    null_ls.builtins.formatting.goimports,
    null_ls.builtins.formatting.golines,
    null_ls.builtins.formatting.scalafmt,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.dart_format,
    null_ls.builtins.formatting.prettierd.with {
      filetypes = { "html", "css", "javascriptreact", "typescriptreact", "json", "vue" },
    },

    -- diagnostics
    null_ls.builtins.diagnostics.yamllint,
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { async = false }
        end,
      })
    end
  end,
}
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
