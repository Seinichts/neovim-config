return {
  {
    "CRAG666/code_runner.nvim",
    ft = { "lua", "python", "c", "cpp" },
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>rr", "<cmd>RunCode<cr>", desc = "Run Code" },
      -- { "<leader>rf", "<cmd>RunFile<cr>", desc = "Run File" },
      -- { "<leader>rp", "<cmd>RunProject<cr>", desc = "Run Project" },
      { "<leader>rd", "<cmd>RunClose<cr>", desc = "Run Close" },
    },
    opts = {
      -- choose default mode (valid term, tab, float, toggle, buf)
      mode = "term",
      -- Focus on runner window(only works on toggle, term and tab mode)
      focus = false,
      -- startinsert (see ':h inserting-ex')
      startinsert = false,
      term = {
        --  Position to open the terminal, this option is ignored if mode is tab
        position = "bot",
        -- window size, this option is ignored if tab is true
        size = 8,
      },
      float = {
        -- Key that close the code_runner floating window
        close_key = "<ESC>",
        -- Window border (see ':h nvim_open_win')
        border = "none",

        -- Num from `0 - 1` for measurements
        height = 0.8,
        width = 0.8,
        x = 0.5,
        y = 0.5,

        -- Highlight group for floating window/border (see ':h winhl')
        border_hl = "FloatBorder",
        float_hl = "Normal",

        -- Transparency (see ':h winblend')
        blend = 0,
      },
      filetype_path = "", -- No default path defined
      filetype = {
        javascript = "node",
        java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
        c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
        cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
        python = "python -u",
        sh = "bash",
        rust = "cd $dir && rustc $fileName && $dir$fileNameWithoutExt",
      },
      project_path = "", -- No default path defined
      project = {},
    },
    -- config = {
    --   filetype = {
    --     python = "python3 -u",
    --   },
    --   mode = "term",
    --   float = {
    --     close_key = "q",
    --   },
    -- },
  },
}
