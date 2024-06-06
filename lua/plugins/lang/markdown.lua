return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        markdownlint = {
          --  Disable line length check
          args = { "--disable", "MD013", "--" },
        },
      },
    },
  },
}
