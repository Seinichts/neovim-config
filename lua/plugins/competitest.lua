return {
  {
    "xeluxee/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    lazy = false,
    keys = {
      { "<localleader>rt", "<cmd>CompetiTest receive testcases<CR>", "Receive testcases" },
      { "<localleader>rp", "<cmd>CompetiTest receive problem<CR>", "Receive problem" },
      { "<localleader>rc", "<cmd>CompetiTest receive contest<CR>", "Receive contest" },
      { "<localleader>c", "<cmd>CompetiTest run<CR>", "Run code" },
    },
    config = function()
      require("competitest").setup({
        received_problems_path = "$(HOME)/compcode/$(JUDGE)/$(CONTEST)/$(PROBLEM).$(FEXT)c",
        received_contests_directory = "$(HOME)/compcode/$(JUDGE)/$(CONTEST)",
        template_file = {
          cpp = "~/compcode/templates/template.cpp",
        },
        compile_command = {
          cpp = { exec = "clang++", args = { "$(FNAME)", "-o", "$(FNOEXT)", "-lm", "-fsanitize=address" } },
        },
        run_command = {
          cpp = { exec = "./$(FNOEXT)" },
        },
      })
    end,
  },
}
