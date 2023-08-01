-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  vim.keymap.set(mode, lhs, rhs, opts)
end

map("n", "<C-p>", "<cmd>lua require('telescope.builtin').find_files()<CR>", {})
map("n", "<C-z>", "<cmd>lua require('telescope.builtin').live_grep()<CR>", {})

map("n", "<C-j>", "<cmd>lua vim.diagnostic.goto_next()<CR>")
map("n", "<C-k>", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
map("n", "<C-q>", function()
  require("mini.bufremove").delete(0, false)
end, { desc = "Close Tab" })

map("n", "0", "^")
map("n", "^", "0")

map("i", "<C-e>", "<C-o>$")
map("i", "<C-a>", "<C-o>^")
map("i", "<C-l>", "<C-o>l")
map("i", "<C-h>", "<C-o>h")
map("i", "<C-j>", "<C-o>j")
map("i", "<C-k>", "<C-o>k")
map("i", "<C-b>", "<C-o>b")

map("n", "<C-b>", "<cmd>Git blame<CR>")
