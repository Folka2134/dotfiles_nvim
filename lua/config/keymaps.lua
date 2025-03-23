-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap -- for conciseness

-- Escape with jk
keymap.set("i", "jk", "<ESC>", { desc = "which_key_ignore" })
keymap.set("v", "jk", "<ESC>", { desc = "which_key_ignore" })
keymap.set("s", "jk", "<ESC>", { desc = "which_key_ignore" })
keymap.set("x", "jk", "<ESC>", { desc = "which_key_ignore" })
keymap.set("c", "jk", "<ESC>", { desc = "which_key_ignore" })
keymap.set("o", "jk", "<ESC>", { desc = "which_key_ignore" })
keymap.set("t", "jk", "<ESC>", { desc = "which_key_ignore" })

-- Move line and center

keymap.set("n", "<C-d>", "<Cmd>normal! <C-d>zz<CR>", { desc = "Move line down and center" })
keymap.set("n", "<C-f>", "<Cmd>normal! <C-u>zz<CR>", { desc = "Move line up and center" })
keymap.set("n", "G", "<Cmd>normal! Gzz<CR>", { desc = "Move to bottom and center" })

-- Change tab
keymap.set("n", "]<tab>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
keymap.set("n", "[<tab>", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
-- save file
-- keymap.set({ "i", "x", "n", "s" }, "<leader>s", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Remap for dealing with word wrap
-- vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = >true, silent = true })

-- Noice
keymap.set("n", "<leader>nn", ":Noice dismiss<CR>", { noremap = true })

-- Go to error
keymap.set("n", "<leader>e", "<cmd>GoIfErr<cr>", { silent = true, noremap = true })

-- Floating terminal
keymap.set("n", "<leader>t", function()
  -- Snacks.terminal(nil, { cwd = LazyVim.root() })
  Snacks.terminal()
end, { desc = "Terminal (Root Dir)" })

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
