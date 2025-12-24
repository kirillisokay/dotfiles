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
      javascript = { "eslint_d", "prettigr" },
      javascriptreact = { "eslint_d", "prettier" },
      typescript = { "eslint_d", "prettier" },
      typescriptreact = { "eslint_d", "prettier" },
      json = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
    },
    formatters = {
      erb_format = {
        command = "erb-format",
      },
    },
  },
}
