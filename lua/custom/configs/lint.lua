local lint = require "lint"

lint.linters_by_ft = {
  javascript = { "eslint", "eslint_d" },
  typescript = { "eslint", "eslint_d" },
  python = { "ruff", "mypy" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    lint.try_lint()
  end,
})
