local config = require "plugins.configs.lspconfig"
local on_attach = config.on_attach
local pid = vim.fn.getpid()

local capabilities = config.capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

lspconfig.emmet_ls.setup {
  filetypes = { "html", "css", "javascriptreact", "typescriptreact" },
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "emmet-ls", "--stdio" },
}

lspconfig.cssls.setup {
  filetypes = { "css", "scss", "less", "sass" },
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "css-languageserver", "--stdio" },
}

lspconfig.tailwindcss.setup {
  filetypes = { "html", "css", "scss", "javascriptreact", "typescriptreact", "svelte", "vue" },
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "tailwindcss-language-server", "--stdio" },
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
}

lspconfig.omnisharp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "omnisharp", "--languageserver", "--hostPID", tostring(pid) },
  filetypes = { "cs", "vb" },
  root_dir = util.root_pattern("*.sln", "*.csproj", "omnisharp.json", "function.json"),
  enable_roslyn_analyzers = true,
  organize_imports_on_format = true,
  enable_import_completion = true,
}

lspconfig.angularls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "typescript",
    "html",
    "typescriptreact",
  },
}

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

lspconfig.jdtls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "jdtls" },
  filetypes = { "java" },
}

lspconfig.zls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "zls" },
  filetypes = { "zig", "zir" },
  root_dir = util.root_pattern("zls.json", "build.zig", ".git"),
}

lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "clangd" },
  filetypes = { "c", "cpp" },
  root_dir = util.root_pattern(
    ".clangd",
    ".clang-tidy",
    ".clang-format",
    "compile_commands.json",
    "compile_flags.txt",
    "configure.ac",
    ".git"
  ),
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_dir = util.root_pattern("pyproject.toml", "setup.py", "Pipfile", "requirements.txt", ".git"),
}

lspconfig.jsonls.setup {
  cmd = { "vscode-json-language-server", "--stdio" },
  filetypes = { "json", "jsonc" },
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.jqls.setup {
  cmd = { "jq-lsp" },
  filetypes = { "jq" },
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.metals.setup {
  cmd = { "metals" },
  filetypes = { "scala" },
  on_attach = on_attach,
  capabilities = capabilities,
}
