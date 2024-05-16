return {
  {
    "neovim/nvim-lspconfig",
    lazy = true,
    ft = { "c", "cpp" },
    opts = {
      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--cross-file-rename",
            "--clang-tidy-checks=performance-*,modernize-*,bugprone-*,cppcoreguidelines-*,readability-*",
            "-j=12",
            "--all-scopes-completion",
            "--header-insertion=iwyu",
            "--compile-commands-dir=build",
          },
        },
      },
    },
  },
}
