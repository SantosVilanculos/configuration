return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formaters_by_ft = {
        sh = { "shfmt" },
        lua = { "stylua" },
        json = { "jq" },
        php = { "pint" },
        python = { "isort", "black" },
      },
    },
  },
}
