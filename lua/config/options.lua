-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

if vim.g.neovide then
  -- Put neovide setting here
  vim.o.guifont = "JetBrainsMono NF:h20"
  vim.g.neovide_window_blurred = true
  -- vim.o.shell = "/bin/zsh"
  vim.g.neovide_transparency = 1.0
  vim.g.transparent = 1.0
end
