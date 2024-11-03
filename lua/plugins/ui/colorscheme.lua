return {
  -- Lazy
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "latte",
      -- transparent_background = false,
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "dawn",
    },
  },
  {
    "loctvl842/monokai-pro.nvim",
    name = "monokai-pro",
  },

  -- somewhere in your config:
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-pro-default",
    },
  },
}
