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
        event_handlers = {
          {
            event = "file_open_requested",
            handler = function()
              require("neo-tree.command").execute({ action = "close" })
            end,
          },
        },
      })

      -- KEYMAP: Toggle Neo-tree with <leader>e
      vim.keymap.set("n", "<leader>e", function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
      end, { desc = "Toggle Neo-tree" })
    end,
  }
}
