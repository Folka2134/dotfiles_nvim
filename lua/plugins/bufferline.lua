return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      numbers = "ordinal",
    },
  },
  keys = {
    {
      "<A-1>",
      function()
        require("bufferline").go_to(1, true)
      end,
      desc = "Go to buffer 1",
    },
    {
      "<A-2>",
      function()
        require("bufferline").go_to(2, true)
      end,
      desc = "Go to buffer 2",
    },
    {
      "<A-3>",
      function()
        require("bufferline").go_to(3, true)
      end,
      desc = "Go to buffer 3",
    },
    {
      "<A-4>",
      function()
        require("bufferline").go_to(4, true)
      end,
      desc = "Go to buffer 4",
    },
    {
      "<A-5>",
      function()
        require("bufferline").go_to(5, true)
      end,
      desc = "Go to buffer 5",
    },
    {
      "<A-!>",
      function()
        require("bufferline").move_to(1)
      end,
      desc = "Move buffer to position 1",
    },
    {
      '<A-">',
      function()
        require("bufferline").move_to(2)
      end,
      desc = "Move buffer to position 2",
    },
    {
      "<A-£>",
      function()
        require("bufferline").move_to(3)
      end,
      desc = "Move buffer to position 3",
    },
    {
      "<A-$>",
      function()
        require("bufferline").move_to(4)
      end,
      desc = "Move buffer to position 4",
    },
    {
      "<A-%>",
      function()
        require("bufferline").move_to(5)
      end,
      desc = "Move buffer to position 5",
    },
  },
}
