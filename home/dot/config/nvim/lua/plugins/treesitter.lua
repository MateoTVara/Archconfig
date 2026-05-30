return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    opts = {
      ensure_installed = {
        "lua", "python", "php",
        "javascript", "typescript", "html", "css",
        "jsx", "tsx",
        "rust", "java",
        "qmljs"
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      }
    }
  }
}
