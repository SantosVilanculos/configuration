return {
  {
    "mfussenegger/nvim-lint",
    events = { "BufWritePost", "BufReadPost", "InsertLeave" },
    opts = {
      linters_by_ft = {
        css = { "eslint_d" },
        html = { "htmlhint" },
        javascript = { "eslint_d" },
        php = { "phpstan" },
        python = { "ruff" },
        typescript = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        vue = { "eslint_d" },
        ["*"] = { "cspell" },
      },
    },
  },
}
