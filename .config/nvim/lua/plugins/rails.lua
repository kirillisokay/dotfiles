return {
  "weizheheng/ror.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "stevearc/dressing.nvim",
  },
  config = function()
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
  end,
}
