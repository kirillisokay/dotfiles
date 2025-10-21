return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "bash",
        "typescript",
        "javascript",
        "html",
        "css",
        "ruby",
        "dockerfile",
        "vue",
        "php",
        "jsdoc",
        "embedded_template",
      },
    })
  end,
}
