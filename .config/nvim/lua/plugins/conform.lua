return {
  {
    "stevearc/conform.nvim",
    optional = true,
    ---@module 'conform'
    ---@type conform.setupOpts
    opts = {
      formatters_by_ft = {
        sh = { "shfmt" },
        bash = { "shfmt" },
        blade = { "prettier", "blade-formatter", stop_after_first = true },
        css = { "prettier" },
        html = { "prettier" },
        javascript = { "prettier" },
        json = { "jq" },
        lua = { "stylua" },
        php = { "pint" },
        python = { "autoflake", "isort", "black" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        vue = { "prettier" },
        zsh = { "shfmt" },
      },
      formatters = {
        autoflake = {
          inherit = true,
          prepend_args = {
            "--remove-all-unused-imports",
            "--recursive",
            "--expand-star-imports",
            "--in-place",
          },
        },
        isort = {
          inherit = true,
          prepend_args = { "--profile", "black" },
        },
        black = {
          inherit = true,
          prepend_args = { "--line-length", "79" },
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
