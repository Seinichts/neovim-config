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
          ["vb"] = "", ["va"] = "",
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
  {
    "lervag/vimtex",
    lazy = false, -- lazy-loading will disable inverse search
    init = function()
      vim.g.vimtex_syntax_conceal_disable = 1
      vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
      vim.g.vimtex_view_method = "general"
      vim.g.vimtex_view_general_viewer = "open -a UPDF"
      vim.g.vimtex_view_skim_sync = 1
      vim.g.vimtex_compiler_silent = 1

      vim.g.vimtex_compiler_method = "latexmk"
    end,
  },
}
