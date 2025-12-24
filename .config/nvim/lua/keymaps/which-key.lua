-- lua/keymaps/which-key.lua
local wk = require("which-key")

wk.add({
  { "<leader>o", group = "opencode" },
  { "<leader>r", group = "RoR" },

  -- ── opencode ───────────────────
  { "<C-a>", desc = "Ask opencode", mode = { "n", "x" } },
  { "<C-x>", desc = "opencode actions", mode = { "n", "x" } },
  { "ga", desc = "Add to opencode", mode = { "n", "x" } },
  { "<C-.>", desc = "Toggle opencode", mode = { "n", "t" } },
  { "<S-C-u>", desc = "½ page up", mode = "n" },
  { "<S-C-d>", desc = "½ page down", mode = "n" },

  -- Optional: duplicate under <leader>o for discoverability
  { "<leader>oa", "<C-a>", desc = "Ask opencode", mode = { "n", "x" } },
  { "<leader>ox", "<C-x>", desc = "Actions", mode = { "n", "x" } },
  { "<leader>og", "ga", desc = "Add to opencode", mode = { "n", "x" } },
  { "<leader>ot", "<C-.>", desc = "Toggle terminal", mode = { "n", "t" } },

  -- ── RoR ────────────────────────
  { "<leader>rg", desc = "Commands" },
  { "<leader>rq", desc = "Table Schema" },
  { "<leader>rr", desc = "List Routes" },
  { "<leader>ry", desc = "Sync Routes" },
  -- -- ==== Leader groups ====
  -- { "<leader>b", group = "buffers / bookmarks" },
  -- { "<leader>c", group = "code / lsp" },
  -- { "<leader>f", group = "find / telescope" },
  -- { "<leader>g", group = "git" },
  -- { "<leader>o", group = "opencode" }, -- ← nice group
  -- { "<leader>t", group = "terminal / tasks" },
  --
  -- -- ==== opencode keybinds ====
  -- { "<C-a>", desc = "Ask opencode", mode = { "n", "x" } },
  -- { "<C-x>", desc = "opencode actions", mode = { "n", "x" } },
  -- { "ga", desc = "Add to opencode", mode = { "n", "x" } },
  -- { "<C-.>", desc = "Toggle opencode", mode = { "n", "t" } },
  -- { "<S-C-u>", desc = "½ page up", mode = "n" },
  -- { "<S-C-d>", desc = "½ page down", mode = "n" },

  -- -- optional: duplicated under <leader>o for discoverability
  -- { "<leader>oa", "<C-a>", desc = "Ask opencode", mode = { "n", "x" } },
  -- { "<leader>ox", "<C-x>", desc = "Actions menu", mode = { "n", "x" } },
  -- { "<leader>og", "ga", desc = "Add to opencode", mode = { "n", "x" } },
  -- { "<leader>ot", "<C-.>", desc = "Toggle terminal", mode = { "n", "t" } },
})
