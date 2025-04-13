-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set
map("n", "<leader>o", "<cmd>Outline<cr>", { desc = "Toggle Outline" })
map("n", "<leader>fo", "<cmd>FzfLua files cwd=$OBSIDIAN_VAULT<cr>", { desc = "Find Obsidian" })
map("n", "<leader>so", "<cmd>FzfLua live_grep_native cwd=$OBSIDIAN_VAULT<cr>", { desc = "Grep Obsidian" })
