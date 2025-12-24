return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    ---@module 'snacks'
    {
      "folke/snacks.nvim",
      opts = {
        input = { enabled = true },
        picker = { enabled = true },
        terminal = {},
      },
    },
  },
  config = function()
    ---@type opencode.Opts
    vim.g.opencode_opts = {
      provider = {
        enabled = "snacks",
        snacks = {
          direction = "right",
          percent = 25,
        },
      },
    }
  end,
}
