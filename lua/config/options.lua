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
  vim.o.guifont = "JetbrainsMono Nerd Font:h16"
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_floating_corner_radius = 20.0
  vim.g.neovide_line_height = 1.5
  vim.g.transparency = 1
  -- vim.g.neovide_transparency = 0.9
  -- Allow clipboard copy paste in neovim
  vim.g.neovide_input_use_logo = 1
  vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })
end
