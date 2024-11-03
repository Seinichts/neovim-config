return {
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    keys = {
      { "<localleader>kt", "<cmd>Leet test<CR>", desc = "Leet test" },
      { "<localleader>ks", "<cmd>Leet submit<CR>", desc = "Leet submit" },
      { "<localleader>kl", "<cmd>Leet lang<CR>", desc = "Leet lang" },
      { "<localleader>kp", "<cmd>Leet list<CR>", desc = "List problem" },
    },
    opts = {
      -- configuration goes here
      ---@type string
      arg = "leetcode.nvim",

      ---@type lc.lang
      lang = "cpp",
      ---@type lc.storage
      storage = {
        home = vim.fn.stdpath("data") .. "/leetcode",
        cache = vim.fn.stdpath("cache") .. "/leetcode",
      },
      ---@type boolean
      logging = true,
    },
  },
}
