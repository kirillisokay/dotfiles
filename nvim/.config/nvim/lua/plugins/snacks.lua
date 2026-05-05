return {
  "folke/snacks.nvim",
  priority = 1000,
  opts = {
    input = {},
    picker = { -- Enhances opencode's `select()`
      actions = {
        opencode_send = function(...)
          return require("opencode").snacks_picker_send(...)
        end,
      },
    },
    image_preview = {
      enable = true,
    },
  },
}
