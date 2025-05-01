return {
  "folke/noice.nvim",
  keys = {
    -- {
    --   "<C-n>",
    --   function()
    --     if not require("noice.lsp").scroll(4) then
    --       return "<C-n>"
    --     end
    --   end,
    --   silent = true,
    --   expr = true,
    --   desc = "Scroll Forward",
    --   mode = { "i", "n", "s" },
    --   "C-f",
    --   false,
    -- },
    { "<A-f>", mode = { "n", "x", "o", "i", "s" }, false },
  },
}
