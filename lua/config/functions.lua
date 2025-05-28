-- REMOVE:
-- - Function to perform the completion at word end
local function complete_at_word_end()
  -- Check if we're already at the end of a word
  local col = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local char_after = line:sub(col + 1, col + 1)

  -- If there's no character after cursor or it's whitespace/punctuation,
  -- we're likely at the end of a word already
  if char_after == "" or char_after:match("[%s%p]") then
    -- Already at end of word, just trigger completion
    require("cmp").complete()
  else
    -- In the middle of a word, go to end first
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>ea", true, false, true), "n", true)
    vim.defer_fn(function()
      require("cmp").complete()
    end, 10)
  end
end
-- Make the function available globally
_G.complete_at_word_end = complete_at_word_end
