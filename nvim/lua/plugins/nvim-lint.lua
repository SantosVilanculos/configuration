return {
  {
    "mfussenegger/nvim-lint",
    optional = true,
    events = { "BufWritePost", "BufReadPost", "InsertLeave" },
    opts = {
      linters_by_ft = {
        php = { "phpstan" },
        ["*"] = { "cspell" },
      },
    },
  },
}
