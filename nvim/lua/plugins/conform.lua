return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        bash = { "shfmt" },
        blade = { "blade-formatter" },
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
      formatters = {
        isort = {
          inherit = true,
          prepend_args = { "--profile", "black" },
        },
        black = {
          inherit = true,
          prepend_args = { "--line-length", "120" },
        },
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
