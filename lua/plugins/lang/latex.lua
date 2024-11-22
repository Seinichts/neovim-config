return {
  {
    "lervag/vimtex",
    lazy = false, -- lazy-loading will disable inverse search
    init = function()
      vim.g.vimtex_syntax_conceal_disable = 1
      vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
      vim.g.vimtex_view_method = "skim"
      -- vim.g.vimtex_view_general_viewer = "open -a UPDF"
      vim.g.vimtex_view_skim_sync = 1
      vim.g.vimtex_compiler_silent = 1
      vim.g.vimtex_compiler_method = "latexmk"
    end,
  },
  {
    "evesdropper/luasnip-latex-snippets.nvim",
    enabled = false,
  }

}
