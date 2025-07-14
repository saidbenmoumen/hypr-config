return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  {
    "saghen/blink.cmp",
    opts = {
      cmdline = {
        enabled = true,
      },
    },
  },
}
