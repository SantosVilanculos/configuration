return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                autopep8 = { enabled = false },
                pycodestyle = { enabled = false },
                black = { enabled = true },
                isort = { enabled = true, profile = "black" },
              },
            },
          },
        },
      },
    },
  },
}
