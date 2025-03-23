return {
  desc = "Snacks File Explorer",
  recommended = true,
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = { hidden = true },
        grep = { hidden = true },
        explorer = {
          include = { ".env*", ".env.local" },
          hidden = true,
          auto_close = true,
          layout = {
            preview = "main",
          },
        },
      },
      layouts = {
        sidebar = {
          layout = {
            present = "sidebar",
            preview = true,
            position = "right",
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
      desc = "Explorer Snacks (root dir)",
    },
    {
      "<leader>M",
      function()
        Snacks.explorer()
      end,
      desc = "Explorer Snacks (cwd)",
    },
    { "<leader>e", false },
    { "<leader>E", false },
  },
}
