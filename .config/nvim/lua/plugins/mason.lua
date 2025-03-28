return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- *
        "cspell",
        -- bash
        "bash-language-server",
        "shfmt",
        -- blade
        "blade-formatter",
        -- json|jsonc
        "json-lsp",
        "jq",
        -- lua
        "lua-language-server",
        "stylua",
        -- php
        "intelephense",
        "phpstan",
        "pint",
        -- python
        "python-lsp-server",
        "pyright",
        "ruff",
        "isort",
        "autoflake",
        "black",
        -- yaml
        "yaml-language-server",
        -- css|html|javacript|typescript
        "prettier",
        "eslint_d",
        "html-lsp",
        "htmlhint",
        "css-lsp",
        "tailwindcss-language-server",
        "typescript-language-server",
        "vue-language-server",
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
