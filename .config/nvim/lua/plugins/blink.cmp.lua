return {
  {
    "saghen/blink.cmp",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        preset = "super-tab",
        ["Tab"] = {
          "select_next",
          "snippet_forward",
          "fallback",
        },
        ["S-Tab"] = {
          "select_prev",
          "snippet_backward",
          "fallback",
        },
      },
      completion = {
        menu = {
          auto_show = false,
        },
      },
    },
  },
}
