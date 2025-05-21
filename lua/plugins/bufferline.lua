return {
  "akinsho/bufferline.nvim",
  keys = {
    {
      "<leader>1",
      function()
        require("bufferline").go_to(1, true)
      end,
      desc = "Go to buffer 1",
    },
    {
      "<leader>2",
      function()
        require("bufferline").go_to(2, true)
      end,
      desc = "Go to buffer 2",
    },
    {
      "<leader>3",
      function()
        require("bufferline").go_to(3, true)
      end,
      desc = "Go to buffer 3",
    },
    {
      "<leader>4",
      function()
        require("bufferline").go_to(4, true)
      end,
      desc = "Go to buffer 4",
    },
    {
      "<leader>5",
      function()
        require("bufferline").go_to(5, true)
      end,
      desc = "Go to buffer 5",
    },
    {
      "<leader>b1",
      function()
        require("bufferline").move_to(1)
      end,
      desc = "Move buffer to position 1",
    },
    {
      "<leader>b2",
      function()
        require("bufferline").move_to(2)
      end,
      desc = "Move buffer to position 2",
    },
    {
      "<leader>b3",
      function()
        require("bufferline").move_to(3)
      end,
      desc = "Move buffer to position 3",
    },
    {
      "<leader>b4",
      function()
        require("bufferline").move_to(4)
      end,
      desc = "Move buffer to position 4",
    },
    {
      "<leader>b5",
      function()
        require("bufferline").move_to(5)
      end,
      desc = "Move buffer to position 5",
    },
  },
}
