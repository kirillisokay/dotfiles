return {
  {
    "folke/snacks.nvim",
    opts = {},
    config = function()
      local scooter_win = nil

      local function is_valid_window(win)
        return win and vim.api.nvim_win_is_valid(win)
      end

      local function open_scooter()
        if is_valid_window(scooter_win) then
          vim.api.nvim_win_hide(scooter_win)
          scooter_win = nil
          return
        end

        Snacks.terminal.open("scooter", {
          layout = "float",
          border = "rounded",
          width = 0.8,
          height = 0.8,
          on_open = function(term)
            scooter_win = term.win
          end,
          on_close = function()
            scooter_win = nil
          end,
        })
      end

      _G.EditLineFromScooter = function(file_path, line)
        if is_valid_window(scooter_win) then
          vim.api.nvim_win_hide(scooter_win)
          scooter_win = nil
        end

        local current_path = vim.fn.expand("%:p")
        local target_path = vim.fn.fnamemodify(file_path, ":p")

        if current_path ~= target_path then
          vim.cmd.edit(vim.fn.fnameescape(file_path))
        end

        vim.api.nvim_win_set_cursor(0, { line, 0 })
      end

      _G.OpenScooterSearchText = function(search_text)
        if is_valid_window(scooter_win) then
          vim.api.nvim_win_hide(scooter_win)
          scooter_win = nil
        end

        local escaped_text = vim.fn.shellescape(search_text:gsub("\r?\n", " "))
        Snacks.terminal.open("scooter --search-text " .. escaped_text, {
          layout = "float",
          border = "rounded",
          width = 0.8,
          height = 0.8,
          on_open = function(term)
            scooter_win = term.win
          end,
          on_close = function()
            scooter_win = nil
          end,
        })
      end

      vim.keymap.set("n", "<leader>s", open_scooter, { desc = "Open Scooter (float)" })

      vim.keymap.set("v", "<leader>r", function()
        vim.cmd('normal! "ay')
        local text = vim.fn.getreg("a")
        _G.OpenScooterSearchText(text)
      end, { desc = "Search selected text in Scooter" })
    end,
  },
}
