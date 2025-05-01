return {
  "folke/noice.nvim",
  keys = {
    -- {
    --   function()
    --   "<C-n>",
    --     if not require("noice.lsp").scroll(4) then
    --       return "<C-n>"
    --     end
    --   end,
    --   silent = true,
    --   desc = "Scroll Forward",
    --   expr = true,
    --   mode = { "i", "n", "s" },
    --   "C-f",
    --   false,
    -- },
    { "<A-f>", mode = { "n", "x", "o", "i", "s" }, false },
  },
}
