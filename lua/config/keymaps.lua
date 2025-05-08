-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap -- for conciseness

-- Move Lines
keymap.set("n", "<A-S-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
keymap.set("n", "<A-S-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
keymap.set("i", "<A-S-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
keymap.set("i", "<A-S-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
keymap.set("v", "<A-S-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
keymap.set("v", "<A-S-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- Escape with jk
keymap.set("i", "jk", "<ESC>", { desc = "which_key_ignore" })
keymap.set("v", "jk", "<ESC>", { desc = "which_key_ignore" })
keymap.set("s", "jk", "<ESC>", { desc = "which_key_ignore" })
keymap.set("x", "jk", "<ESC>", { desc = "which_key_ignore" })
keymap.set("o", "jk", "<ESC>", { desc = "which_key_ignore" })
keymap.set("t", "jk", "<ESC>", { desc = "which_key_ignore" })
keymap.set("i", "JK", "<ESC>", { desc = "which_key_ignore" })
keymap.set("v", "JK", "<ESC>", { desc = "which_key_ignore" })
keymap.set("s", "JK", "<ESC>", { desc = "which_key_ignore" })
keymap.set("x", "JK", "<ESC>", { desc = "which_key_ignore" })
keymap.set("c", "JK", "<ESC>", { desc = "which_key_ignore" })
keymap.set("o", "JK", "<ESC>", { desc = "which_key_ignore" })
keymap.set("t", "JK", "<ESC>", { desc = "which_key_ignore" })

-- Move line and center
keymap.set("n", "<A-d>", "<Cmd>normal! <C-d>zz<CR>", { desc = "Move line down and center" })
keymap.set("n", "<A-f>", "<Cmd>normal! <C-u>zz<CR>", { desc = "Move line up and center" })
keymap.set("n", "ð", "<Cmd>normal! <C-d>zz<CR>", { desc = "Move line down and center" })
keymap.set("n", "đ", "<Cmd>normal! <C-u>zz<CR>", { desc = "Move line up and center" })
keymap.set("n", "G", "<Cmd>normal! Gzz<CR>", { desc = "Move to bottom and center" })

-- Move to search and center
keymap.set("n", "<Tab>", "<Cmd>normal! nzz<CR>", { desc = "Move to next found and center" })
keymap.set("n", "<S-Tab>", "<Cmd>normal! Nzz<CR>", { desc = "Move to previous found and center" })

-- Change tab
keymap.set("n", "]<tab>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
keymap.set("n", "[<tab>", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Noice
-- keymap.set("n", "<leader>nn", ":Noice dismiss<CR>", { noremap = true })

-- Visual mode mappings
keymap.set("v", "p", '"_dP', { desc = "Paste without yanking selected text" })
keymap.set("v", "d", '"_d', { desc = "Delete without yanking" })
keymap.set("v", "D", '"_D', { desc = "Delete to end without yanking" })
keymap.set("v", "x", '"_x', { desc = "Delete character without yanking" })
keymap.set("v", "c", '"_c', { desc = "Change without yanking" })

-- Normal mode basic operations
-- keymap.set("n", "dd", '"_dd', { desc = "Delete line without yanking" })
keymap.set("n", "D", '"_D', { desc = "Delete to end without yanking" })
keymap.set("n", "x", '"_x', { desc = "Delete character without yanking" })
keymap.set("n", "X", '"_X', { desc = "Delete character before cursor without yanking" })

-- For operator-pending commands like 'ciw', remap the operators
keymap.set("n", "c", '"_c', { desc = "Change without yanking" })
keymap.set("n", "C", '"_C', { desc = "Change to end without yanking" })
keymap.set("n", "d", '"_d', { desc = "Delete without yanking" })

-- Floating terminal
keymap.set("n", "<leader>t", function()
  -- Snacks.terminal(nil, { cwd = LazyVim.root() })
  Snacks.terminal()
end, { desc = "Terminal (Root Dir)" })
-- Toggle terminal
keymap.set({ "n", "v", "t" }, "<A-/>", function()
  Snacks.terminal()
end, { desc = "Toggle Terminal" })

-- location list
keymap.set("n", "<leader>fl", function()
  local success, err = pcall(vim.fn.getloclist(0, { winid = 0 }).winid ~= 0 and vim.cmd.lclose or vim.cmd.lopen)
  if not success and err then
    vim.notify(err, vim.log.levels.ERROR)
  end
end, { desc = "Location List" })

-- quickfix list
keymap.set("n", "<leader>fq", function()
  local success, err = pcall(vim.fn.getqflist({ winid = 0 }).winid ~= 0 and vim.cmd.cclose or vim.cmd.copen)
  if not success and err then
    vim.notify(err, vim.log.levels.ERROR)
  end
end, { desc = "Quickfix List" })
