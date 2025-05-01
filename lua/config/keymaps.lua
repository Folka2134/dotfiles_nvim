-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap -- for conciseness

-- Move Lines
keymap.set("n", "<A-J>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
keymap.set("n", "<A-K>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
keymap.set("i", "<A-J>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
keymap.set("i", "<A-K>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
keymap.set("v", "<A-J>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
keymap.set("v", "<A-K>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
-- keymap.set({ "n", "i", "v", "s", "x", "c", "o", "t" }, "<A-j>", "<Down>", { desc = "Move Down" })
-- keymap.set({ "n", "i", "v", "s", "x", "c", "o", "t" }, "<A-k>", "<Up>", { desc = "Move Up" })
-- keymap.set({ "n", "i", "v" }, "<A-j>", "<Down>")
-- keymap.set({ "n", "i", "v" }, "<A-k>", "<Up>")
-- vim.keymap.del({ "n", "i", "v" }, "<A-j>")
-- vim.keymap.del({ "n", "i", "v" }, "<A-k>")

-- Escape with jk
keymap.set("i", "jk", "<ESC>", { desc = "which_key_ignore" })
keymap.set("v", "jk", "<ESC>", { desc = "which_key_ignore" })
keymap.set("s", "jk", "<ESC>", { desc = "which_key_ignore" })
keymap.set("x", "jk", "<ESC>", { desc = "which_key_ignore" })
keymap.set("c", "jk", "<ESC>", { desc = "which_key_ignore" })
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

-- fzf
-- vim.api.nvim_set_keymap("i", "<Tab>", "<C-n>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<S-Tab>", "<C-p>", { noremap = true, silent = true })
