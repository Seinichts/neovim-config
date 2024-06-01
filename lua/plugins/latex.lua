return {
  {
    "lervag/vimtex",
    lazy = false,
    ft = "tex",
    opts = {
      fmt_auto = true,
    },
    fmt = {
      cmd = "latexindent",
      args = { "-g /dev/null", "-l", "-c", '"' .. vim.fn.expand("%") .. '"' },
    },
    init = function()
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_view_method = "sioyek"
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk_engines = { xelatex = "-xelatex" }
      vim.g.vimtex_compiler_silent = 1
      vim.g.vimtex_syntax_conceal_disable = 1
    end,
  },
}
