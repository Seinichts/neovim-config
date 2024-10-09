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
            "--clang-tidy-checks=performance-*,cppcoreguidelines-*,clang-analyzer-*,bugprone-*",
            "-j=12",
            "--all-scopes-completion",
            "--header-insertion=iwyu",
            "--query-driver=/usr/bin/clang,/usr/bin/clang++",
            "--fallback-style=llvm",
          },
        },
      },
    },
  },
  {
    "Civitasv/cmake-tools.nvim",
    lazy = true,
    ft = { "c", "cpp" },
  },
}
