-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set
map("n", "<leader>o", "<cmd>Outline<cr>", { desc = "Toggle Outline" })
map("n", "<leader>fo", "<cmd>FzfLua files cwd=$OBSIDIAN_VAULT<cr>", { desc = "Find Obsidian" })
map("n", "<leader>so", "<cmd>FzfLua live_grep_native cwd=$OBSIDIAN_VAULT<cr>", { desc = "Grep Obsidian" })

-- Custom keymaps for markdown files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    -- Override gd for markdown files to ensure it follows links
    vim.keymap.set("n", "gd", function()
      vim.lsp.buf.definition()
    end, { buffer = true, desc = "Follow markdown link" })
    
    -- Add additional key for following links
    vim.keymap.set("n", "<leader>gf", function()
      vim.lsp.buf.definition()
    end, { buffer = true, desc = "Follow markdown link" })
  end,
})
