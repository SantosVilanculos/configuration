return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      update_cmd = false,
      window = { position = "right" },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = {
          enabled = false,
        },
      },
      buffers = {
        follow_current_file = {
          enabled = false,
        },
      },
    },
  },
}
