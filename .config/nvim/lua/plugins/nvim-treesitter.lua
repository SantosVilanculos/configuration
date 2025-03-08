-- https://github.com/calebdw/dotfiles/blob/master/.config/nvim/lua/calebdw/plugins/treesitter.lua
-- https://medium.com/@jogarcia/laravel-blade-on-neovim-ee530ff5d20d
return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "windwp/nvim-ts-autotag",
      "RRethy/nvim-treesitter-endwise",
      "nvim-treesitter/nvim-treesitter-textobjects",
      "nvim-treesitter/nvim-treesitter-context",
      "LiadOz/nvim-dap-repl-highlights",
    },
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "blade",
        "css",
        "gitignore",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "php",
        "python",
        "scss",
        "sql",
        "regex",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vue",
        "yaml",
      })
    end,
    config = function(_, opts)
      local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      parser_config.blade = {
        install_info = {
          url = "https://github.com/EmranMR/tree-sitter-blade",
          files = { "src/parser.c" },
          branch = "main",
        },
        generate_requires_npm = true,
        requires_generate_from_grammar = true,
        filetype = "blade",
      }

      vim.filetype.add({
        pattern = {
          [".*%.blade%.php"] = "blade",
        },
      })

      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = {
      multiline_threshold = 0,
    },
  },
}
