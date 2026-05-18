return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    config = function()
      require("neo-tree").setup({
        -- Close Neo-tree when opening a file from the tree
        -- event_handlers = {
        --   {
        --     event = "file_open_requested",
        --     handler = function()
        --       require("neo-tree.command").execute({ action = "close" })
        --     end,
        --   },
        -- },
      })

      -- Simple toggle focus function
      local function toggle_neo_tree_focus()
        local current_win = vim.api.nvim_get_current_win()
        local current_buf = vim.api.nvim_win_get_buf(current_win)
        local current_ft = vim.api.nvim_buf_get_option(current_buf, "filetype")
        if current_ft == "neo-tree" then
          -- If in Neo-tree, jump to previous window
          vim.cmd("wincmd p")
        else
          -- If not in Neo-tree, focus Neo-tree
          require("neo-tree.command").execute({ action = "focus" })
        end
      end

      -- KEYMAP: Toggle Focus
      vim.keymap.set("n", "<leader>t", toggle_neo_tree_focus, { desc = "Toggle Neo-tree focus" })

      -- KEYMAP: Toggle Neo-tree with <leader>E
      vim.keymap.set("n", "<leader>T", function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
      end, { desc = "Toggle Neo-tree" })

    end,
  }
}
