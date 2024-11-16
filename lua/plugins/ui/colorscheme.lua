return {
  -- Lazy
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
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
    opts = {
      -- transparent_background = true,
    }
  },

  -- somewhere in your config:
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
