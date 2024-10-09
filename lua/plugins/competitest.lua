return {
  {
    "xeluxee/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    keys = {
      { "<localleader>rt", "<cmd>CompetiTest receive testcases<CR>", "Receive testcases" },
      { "<localleader>rp", "<cmd>CompetiTest receive problem<CR>", "Receive problem" },
      { "<localleader>rc", "<cmd>CompetiTest receive contest<CR>", "Receive contest" },
      { "<localleader>c", "<cmd>CompetiTest run<CR>", "Run code" },
    },
    config = function()
      require("competitest").setup()
    end,
  },
}
