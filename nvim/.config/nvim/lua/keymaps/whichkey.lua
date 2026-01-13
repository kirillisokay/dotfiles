local wk = require("which-key")

wk.add({
  { "<leader>o", group = "opencode" },
  { "<leader>r", group = "RoR" },

  { "<C-a>", desc = "Ask opencode", mode = { "n", "x" } },
  { "<C-x>", desc = "opencode actions", mode = { "n", "x" } },
  { "ga", desc = "Add to opencode", mode = { "n", "x" } },
  { "<C-.>", desc = "Toggle opencode", mode = { "n", "t" } },
  { "<S-C-u>", desc = "½ page up", mode = "n" },
  { "<S-C-d>", desc = "½ page down", mode = "n" },

  { "<leader>rg", desc = "Commands" },
  { "<leader>rq", desc = "Table Schema" },
  { "<leader>rr", desc = "List Routes" },
  { "<leader>ry", desc = "Sync Routes" },
})
