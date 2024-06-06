return {
  {
    "ryleelyman/latex.nvim",
    enabled = false,
    opts = {
      conceals = {
        add = {
          ["colon"] = ":",
          ["coloneqq"] = "≔",
          ["pdv"] = "∂",
          ["odv"] = "d",
          ["sqrt"] = "√",
          ["|"] = "⫴",
          ["{"] = "{",
          ["}"] = "}",
          ["nmid"] = "∤",
          ["implies"] = "⇨",

          -- hide
          [","] = "",
          [" "] = "",
          ["vb"] = "",
          ["va"] = "",
          ["qq"] = "",
          ["mathrm"] = "",
          ["displaystyle"] = "",
          ["limits"] = "",
          ["ab"] = "",
          ["ab*"] = "",
          -- ["bra"] = "",
          -- ["ket"] = "",
          -- ["braket"] = "",
          -- ["ketbra"] = "",
        },
      },
      imaps = {
        enabled = false,
        -- add = { ["\\emptyset"] = "1", ["\\Alpha"] = "A" },
        -- default_leader = ";",
      },
      surrounds = { enabled = false },
    },
    ft = "tex",
  },

  -- inverse serach for LaTeX
  {
    "f3fora/nvim-texlabconfig",
    config = true,
    build = "go build",
    ft = "tex",
  },
  "lervag/vimtex",
  lazy = false, -- lazy-loading will disable inverse search
  config = function()
    vim.api.nvim_create_autocmd({ "FileType" }, {
      group = vim.api.nvim_create_augroup("lazyvim_vimtex_conceal", { clear = true }),
      pattern = { "bib", "tex" },
      callback = function()
        vim.wo.conceallevel = 2
      end,
    })
    vim.keymap.set("n", "<localleader>lt", ":call vimtex#fzf#run()<cr>")

    -- vim.g.vimtex_syntax_conceal_disable = 1
    vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
    vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
    vim.g.vimtex_view_method = "skim"
    vim.g.vimtex_view_skim_sync = 1
    vim.g.vimtex_compiler_silent = 1

    vim.g.vimtex_compiler_method = "latexmk"
  end,
}
