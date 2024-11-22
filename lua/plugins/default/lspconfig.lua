return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        typst_lsp = {
          settings = {
            typst_lsp = {},
          },
        },
        texlab = {
          mason = false,
          settings = {
            texlab = {
              -- rootDirectory = "..",
              -- forwardSearch = {
              --   executable = "/Applications/Skim.app/Contents/SharedSupport/displayline",
              --   args = { "%l", "%p", "%f" },
              -- },
              diagnostics = { ignoredPatterns = { "^Overfull", "^Underfull" } },
              latexFormatter = "latexindent",
              -- latexindent = {
              --   ["local"] = "/Users/hanyu_yan/Documents/Latex/latexindent.yaml",
              -- },
            },
          },
        },
      },
    },
  },
}
