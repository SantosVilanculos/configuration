if true then
  return {}
end

return {
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      -- dark
      -- darker
      -- cool
      -- deep
      -- warm
      -- warmer
      -- light
      style = "darker",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
