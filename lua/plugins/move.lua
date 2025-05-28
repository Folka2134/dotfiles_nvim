return {
  {
    "LazyVim/LazyVim",
    keys = {
      -- Explicitly remove the move line keymaps
      { "<A-j>", false },
      { "<A-k>", false },
      -- Add your window navigation keymaps
      -- { "<A-h>", "<C-w>h", desc = "Go to Left Window", mode = { "n", "v" } },
      -- { "<A-j>", "<C-w>j", desc = "Go to Lower Window", mode = { "n", "v" } },
      -- { "<A-k>", "<C-w>k", desc = "Go to Upper Window", mode = { "n", "v" } },
      -- { "<A-l>", "<C-w>l", desc = "Go to Right Window", mode = { "n", "v" } },
      -- { "<A-h>", "<C-\\><C-n><C-w>h", desc = "Go to Left Window", mode = "t" },
      -- { "<A-j>", "<C-\\><C-n><C-w>j", desc = "Go to Lower Window", mode = "t" },
      -- { "<A-k>", "<C-\\><C-n><C-w>k", desc = "Go to Upper Window", mode = "t" },
      -- { "<A-l>", "<C-\\><C-n><C-w>l", desc = "Go to Right Window", mode = "t" },
    },
  },
}
