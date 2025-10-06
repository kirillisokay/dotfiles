return {
  "weizheheng/ror.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "rcarriga/nvim-notify",
    "stevearc/dressing.nvim",
  },
  config = function()
    vim.notify = require("notify")

    require("dressing").setup({
      input = {
        min_width = { 60, 0.9 },
      },
      select = {
        telescope = require("telescope.themes").get_dropdown({
          layout_config = {
            height = 15,
            width = 90,
          },
        }),
      },
    })

    require("ror").setup({
      test = {
        message = {
          file = "Running test file...",
          line = "Running single test...",
        },
        coverage = {
          up = "DiffAdd",
          down = "DiffDelete",
        },
        notification = {
          timeout = false,
        },
        pass_icon = "✅",
        fail_icon = "❌",
      },
    })

    local wk = require("which-key")

    wk.add({
      { "<Leader>r", group = "RoR" },
      {
        "<Leader>rg",
        function()
          require("ror.commands").list_commands()
        end,
        desc = "RoR Commands",
        mode = "n",
      },
      {
        "<Leader>rq",
        function()
          require("ror.schema").list_table_columns()
        end,
        desc = "RoR Table Schema",
        mode = "n",
      },
      {
        "<Leader>rr",
        function()
          require("ror.schema").list_routes()
        end,
        desc = "RoR List Routes",
        mode = "n",
      },
      {
        "<Leader>ry",
        function()
          require("ror.schema").sync_routes()
        end,
        desc = "RoR Sync Routes",
        mode = "n",
      },
    }, { silent = true })
  end,
}
