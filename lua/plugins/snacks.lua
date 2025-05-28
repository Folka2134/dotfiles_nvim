return {
  desc = "Snacks File Explorer",
  recommended = true,
  "folke/snacks.nvim",
  opts = {
    lazygit = {
      -- your lazygit configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    explorer = {
      win = {
        list = {},
      },
    },
    picker = {
      win = {
        input = {
          keys = {
            ["<a-p>"] = { "list_up", mode = { "n", "i" } },
            ["<a-n>"] = { "list_down", mode = { "n", "i" } },
            ["<a-N>"] = { "preview_scroll_down", mode = { "i", "n" } },
            ["<a-P>"] = { "preview_scroll_up", mode = { "i", "n" } },
            ["<a-v>"] = { "edit_vsplit", mode = { "i", "n" } },
            ["<a-q>"] = { "close", mode = { "i", "n" } },
            -- ["<a-Tab>"] = { "cycle_win", mode = { "i", "n" } },
            -- { "<leader>n", false },
          },
        },
        list = {
          keys = {
            ["<a-n>"] = { "list_down", mode = { "n", "i" } },
            ["<a-p>"] = { "list_up", mode = { "n", "i" } },
            ["<a-N>"] = { "preview_scroll_down", mode = { "i", "n" } },
            ["<a-P>"] = { "preview_scroll_up", mode = { "i", "n" } },
            ["<a-v>"] = { "edit_vsplit", mode = { "i", "n" } },
            ["<a-q>"] = { "close", mode = { "i", "n" } },
            -- ["<a-Tab>"] = { "cycle_win", mode = { "i", "n" } },
          },
        },
        preview = {
          keys = {
            ["<a-n>"] = { "list_down", mode = { "n", "i" } },
            ["<a-p>"] = { "list_up", mode = { "n", "i" } },
            ["<a-N>"] = { "preview_scroll_down", mode = { "i", "n" } },
            ["<a-P>"] = { "preview_scroll_up", mode = { "i", "n" } },
            -- ["<a-H>"] = { "preview_scroll_left", mode = { "i", "n" } },
            -- ["<a-L>"] = { "preview_scroll_right", mode = { "i", "n" } },
            ["<a-v>"] = { "edit_vsplit", mode = { "i", "n" } },
            ["<a-q>"] = { "close", mode = { "i", "n" } },
            -- ["<a-Tab>"] = { "cycle_win", mode = { "i", "n" } },
          },
        },
      },
      sources = {
        files = { hidden = true },
        grep = { hidden = true },
        explorer = {
          include = { ".env*", ".env.local" },
          hidden = true,
          auto_close = true,
          layout = {
            -- preview = "main",
            layout = {
              position = "right",
            },
          },
        },
      },
    },
  },
  keys = {
    -- {
    --   "<leader>e",
    --   function()
    --     Snacks.explorer({ cwd = LazyVim.root() })
    --   end,
    --   desc = "Explorer Snacks (cwd)",
    -- },
    -- {
    --   "<leader>E",
    --   function()
    --     Snacks.explorer()
    --   end,
    --   desc = "Explorer Snacks (root dir)",
    -- },
    { "<Tab>", false },
    { "<leader>n", false },
    -- { "<leader>e", false },
    -- { "<leader>E", false },
  },
}
