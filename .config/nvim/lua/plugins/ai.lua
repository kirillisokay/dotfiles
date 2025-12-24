-- return {
--   {
--     "Loki-Astari/cursor",
--     config = function()
--       require("cursor").setup({
--         width = 50, -- Width of the cursor window (default: 50)
--         auto_open = false, -- Auto-open on startup (default: false)
--         command = "cursor-agent",
--       })
--     end,
--     keys = {
--       { "<leader>ca", ":CursorOpen<CR>", desc = "Open (if needed), Switch to Cursor Window" },
--       { "<leader>cc", ":CursorClose<CR>", desc = "Close Cursor Window" },
--       { "<leader>ct", ":CursorToggle<CR>", desc = "Toggle Cursor Window" },
--     },
--   },
-- }
--
return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    ---@module 'snacks' <- Loads `snacks.nvim` types for configuration intellisense.
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
