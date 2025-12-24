return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    delay = 0,
    preset = "helix",
    notify = true,
    icons = {
      mappings = true,
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

    require("keymaps.bindings")
    require("keymaps.whichkey")
  end,
}
