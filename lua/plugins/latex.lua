return {
  {
    "lervag/vimtex",
    init = function()
      vim.g.vimtex_view_general_viewer = "/mnt/d/SumatraPDF/SumatraPDF.exe"
      vim.g.vimtex_compiler_latexmk_engines = { xelatex = "-xelatex" }
    end,
  },
}
