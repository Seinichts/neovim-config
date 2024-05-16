return {
  {
    "lervag/vimtex",
    lazy = false,
    ft = "tex",
    opts = {
      conceallevel = "1",
    },
    init = function()
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_view_general_viewer = "/mnt/d/SumatraPDF/SumatraPDF.exe"
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk_engines = { xelatex = "-xelatex" }
      vim.g.vimtex_compiler_silent = 1
    end,
  },
}
