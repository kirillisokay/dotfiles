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
      php = { "php" },
      javascript = { "eslint_d", "prettier" },
      javascriptreact = { "eslint_d", "prettier" },
      typescript = { "eslint_d", "prettier" },
      typescriptreact = { "eslint_d", "prettier" },
      json = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      vue = { "prettier" },
    },
    formatters = {
      erb_format = {
        command = "erb-format",
      },
      php = {
        command = "php-cs-fixer",
        args = {
          "fix",
          "--rules=@PSR12",
          "$FILENAME",
        },
        stdin = false,
      },
    },
  },
}
