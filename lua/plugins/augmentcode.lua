return {
  {
    "augmentcode/augment.vim",
    config = function()
      vim.g.augment_workspace_folders =
        { "~/Programming/projects/folka-habits/", "/Users/folka/Programming/reviewing/cobra/" }
    end,

    keys = {
      { "<leader>ac", "<cmd>Augment chat<cr>", desc = "Augment chat" },
      { "<leader>an", "<cmd>Augment chat-new<cr>", desc = "Augment new chat" },
      { "<leader>al", "<cmd>Augment log<cr>", desc = "Show augmenting code log" },
      { "<leader>at", "<cmd>Augment chat-toggle<cr>", desc = "Toggle augmenting code" },
      { "<leader>as", "<cmd>Augment status<cr>", desc = "Show workspace status" },
      { "<leader>ae", "<cmd>Augment enable<cr>", desc = "Enable agumentai" },
      { "<leader>ad", "<cmd>Augment disable<cr>", desc = "Disable agumentai" },
    },
  },
}
