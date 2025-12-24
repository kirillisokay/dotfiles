return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {},
  config = function()
    require("keymaps.bindings")
    require("keymaps.which-key")
  end,
}
