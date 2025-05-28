-- TODO:Clean up
return {
  "hrsh7th/nvim-cmp",
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")
    -- local my_mapping = cmp.mapping({
    --   i = function()
    --     vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>ea", true, false, true), "n", true)
    --     vim.defer_fn(function()
    --       cmp.complete()
    --     end, 10)
    --   end,
    --   n = function()
    --     vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("ea", true, false, true), "n", true)
    --     vim.defer_fn(function()
    --       cmp.complete()
    --     end, 10)
    --   end,
    -- })

    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      ["<A-n>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<A-p>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<A-Space>"] = cmp.mapping(function(fallback)
        local mode = vim.api.nvim_get_mode().mode

        if mode == "n" or mode == "v" or mode == "V" then
          -- Normal/Visual mode: jump to end of word and enter insert mode
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("ea", true, false, true), "n", true)

          -- Use a longer delay to ensure you're in Insert mode before triggering completion
          vim.defer_fn(function()
            if vim.api.nvim_get_mode().mode == "i" then
              cmp.complete()
            end
          end, 50)
        else
          -- Insert or select mode
          local col = vim.api.nvim_win_get_cursor(0)[2]
          local line = vim.api.nvim_get_current_line()
          local char_after = line:sub(col + 1, col + 1)

          if char_after == "" or char_after:match("[%s%p]") then
            cmp.complete()
          else
            -- Move to end of word, re-enter insert mode
            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>ea", true, false, true), "n", true)
            vim.defer_fn(function()
              if vim.api.nvim_get_mode().mode == "i" then
                cmp.complete()
              end
            end, 50)
          end
        end
      end, { "i", "s", "n" }),
      -- ["<A-Space>"] = cmp.mapping(function(fallback)
      --   local mode = vim.api.nvim_get_mode().mode
      --
      --   if mode == "n" or mode == "v" or mode == "V" then
      --     -- Normal mode: go to end of word, enter insert mode, then complete
      --     vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("ea", true, false, true), "n", true)
      --     vim.defer_fn(function()
      --       cmp.complete()
      --     end, 10)
      --   else
      --     -- Insert mode: check if we're at the end of a word already
      --     local col = vim.api.nvim_win_get_cursor(0)[2]
      --     local line = vim.api.nvim_get_current_line()
      --     local char_after = line:sub(col + 1, col + 1)
      --
      --     -- If there's no character after cursor or it's whitespace/punctuation,
      --     -- we're likely at the end of a word already
      --     if char_after == "" or char_after:match("[%s%p]") then
      --       -- Already at end of word, just trigger completion
      --       cmp.complete()
      --     else
      --       -- In the middle of a word, go to end first
      --       vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>ea", true, false, true), "n", true)
      --       vim.defer_fn(function()
      --         cmp.complete()
      --       end, 10)
      --     end
      --   end
      -- end, { "i", "s", "n" }),
      ["<A-q>"] = cmp.mapping(function(fallback)
        -- if cmp.visible() then
        cmp.abort()
        -- else
        --   fallback()
        -- end
      end, { "i", "s" }),
    })
  end,
}
-- local mode = vim.api.nvim_get_mode().mode
--   if mode == "i" then
--     -- If in insert mode, first exit to normal mode, go to end of word, then back to insert
--     vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>ea", true, false, true), "n", true)
--   else
--     -- If in normal mode, go to end of word and enter insert mode
--     vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("ea", true, false, true), "n", true)
--   end
