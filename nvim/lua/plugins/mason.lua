return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "cspell",
        -- sh
        "bash-language-server",
        "shfmt",
        "shellcheck",
        -- lua
        "lua-language-server",
        "stylua",
        -- yaml
        "yaml-language-server",
        -- json/jsonc
        "json-lsp",
        "jq",
        -- css/html/javacript/typescript
        "prettier",
        "html-lsp",
        "htmlhint",
        "css-lsp",
        "tailwindcss-language-server",
        "typescript-language-server",
        "vue-language-server",
        -- php
        "intelephense",
        "phpstan",
        "pint",
        -- python
        "python-lsp-server",
        "pyright",
        "ruff",
        "isort",
        "black",
      },
      automatic_installation = true,
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      automatic_installation = true,
    },
  },
}
