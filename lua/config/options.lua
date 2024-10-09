-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.timeoutlen = 150
vim.opt.spell = true
vim.opt.spelllang = { "en", "cjk" }
vim.opt.spelloptions = "camel"
vim.opt.backup = false
vim.g.maplocalleader = "\\"

vim.g.node_host_prog = "/opt/homebrew/bin/neovim-node-host"
local indent = 2
-- vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.softtabstop = indent -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.tabstop = indent -- Number of spaces tabs count for
vim.opt.shiftwidth = indent -- Size of an indent

if vim.g.neovide then
  vim.o.guifont = "Cascadia Code NF:h16"
  vim.opt.linespace = 3
  vim.g.transparency = 1
  vim.g.neovide_transparency = 0.9
  -- vim.g.neovide_background_color = "#0f1117"
end
