return {
  desc = "Snacks File Explorer",
  recommended = true,
  "folke/snacks.nvim",
  opts = {
    explorer = {
      win = {
        list = {
          keys = {},
        },
      },
    },
    picker = {
      win = {
        input = {
          keys = {
            ["<a-n>"] = { "list_down", mode = { "n", "i" } },
            ["<a-p>"] = { "list_up", mode = { "n", "i" } },
            ["<a-N>"] = { "preview_scroll_down", mode = { "i", "n" } },
            ["<a-P>"] = { "preview_scroll_up", mode = { "i", "n" } },
            ["<a-v>"] = { "edit_vsplit", mode = { "i", "n" } },
            ["<a-Tab>"] = { "cycle_win", mode = { "i", "n" } },
          },
        },
        list = {
          keys = {
            ["<a-n>"] = { "list_down", mode = { "n", "i" } },
            ["<a-p>"] = { "list_up", mode = { "n", "i" } },
            ["<a-N>"] = { "preview_scroll_down", mode = { "i", "n" } },
            ["<a-P>"] = { "preview_scroll_up", mode = { "i", "n" } },
            ["<a-v>"] = { "edit_vsplit", mode = { "i", "n" } },
            ["<a-Tab>"] = { "cycle_win", mode = { "i", "n" } },
          },
        },
        preview = {
          keys = {
            ["<a-n>"] = { "list_down", mode = { "n", "i" } },
            ["<a-p>"] = { "list_up", mode = { "n", "i" } },
            ["<a-N>"] = { "preview_scroll_down", mode = { "i", "n" } },
            ["<a-P>"] = { "preview_scroll_up", mode = { "i", "n" } },
            ["<a-v>"] = { "edit_vsplit", mode = { "i", "n" } },
            ["<a-Tab>"] = { "cycle_win", mode = { "i", "n" } },
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
            preview = "main",
            layout = {
              position = "right",
            },
          },
        },
      },
    },
  },
  keys = {
    {
      "<leader>m",
      function()
        Snacks.explorer({ cwd = LazyVim.root() })
      end,
      desc = "Explorer Snacks (cwd)",
    },
    {
      "<leader>M",
      function()
        Snacks.explorer()
      end,
      desc = "Explorer Snacks (root dir)",
    },
    { "<Tab>", false },
    { "<leader>e", false },
    { "<leader>E", false },
  },
}
