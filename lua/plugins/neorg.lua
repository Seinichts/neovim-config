return {
  "nvim-neorg/neorg",
  lazy = false,
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        -- ["core.latex.renderer"] = {
        --   conceal = true,
        -- },
        -- ["core.autocommands"] = {},
        ["core.integrations.treesitter"] = {},
        -- ["core.integrations.nvim-cmp"] = {},
        -- ["core.neorgcmd"] = {},
        -- ["core.syntax"] = {},
        -- ["core.ui"] = {},
      },
    })
  end,
  dependencies = {
    {
      "vhyrro/luarocks.nvim",
      priority = 1000,
      config = true,
    },
  },
}
