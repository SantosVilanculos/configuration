return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        bash = { "shfmt" },
        css = { "prettier" },
        html = { "prettier" },
        javascript = { "prettier" },
        json = { "jq" },
        lua = { "stylua" },
        php = { "pint" },
        python = { "isort", "black" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        vue = { "prettier" },
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
      local null_ls = require("null-ls")
      opts.sources = opts.sources or {}
      table.insert(opts.sources, null_ls.builtins.formatting.pint)
      table.insert(opts.sources, null_ls.builtins.formatting.isort)
      table.insert(opts.sources, null_ls.builtins.formatting.black)
    end,
  },
}
