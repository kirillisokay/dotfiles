return {
  "stevearc/conform.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    notify_on_error = true,
    formatters_by_ft = {
      lua = { "stylua" },
      ruby = { "rubocop" },
      eruby = { "erb_format" },
      php = { "php_cs_fixer" },
    },
    formatters = {
      erb_format = {
        command = "erb-format",
      },
    },
  },
}
