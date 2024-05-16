return {
  {
    "kmontocam/nvim-conda",
    ft = "python",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>cv", "<cmd>CondaActivate<cr>", desc = "Conda environment" },
    },
  },
  {
    "nvim-neotest/neotest",
    ft = "python",
    dependencies = { "nvim-neotest/neotest-python" },
    opts = { adapters = { "neotest-python" } },
  },
}
