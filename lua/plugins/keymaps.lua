-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>fs", builtin.find_files)
vim.keymap.set("n", "<leader>fp", builtin.git_files)
vim.keymap.set("n", "<leader>fz", builtin.live_grep)
vim.keymap.set("n", "<leader>fo", builtin.oldfiles)
vim.keymap.set("n", "<leader>fh", builtin.help_tags)
vim.keymap.set("n", "<leader>fn", function()
  builtin.find_files({ cwd = vim.fn.stdpath 'config' })
end, { desc = 'Search Neovim files'})

-- tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

-- markdown preview
vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<cr>")

-- nvim-comment
vim.keymap.set({"n","v"}, "<leader>/", ":CommentToggle<cr>")

-- format code using LSP
vim.keymap.set("n", "<leader>fmd", vim.lsp.buf.format)

-- molten (Point neovim at this virtual environment)
vim.g.python3_host_prog=vim.fn.expand("~/.virtualenvs/neovim/Scripts/python3")

-- Undo tree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Git status (must be inside git directory)
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- Python debugger
-- vim.keymap.set("n", "<leader>dt", ":DapUiToggle<cr>")
vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<cr>")
vim.keymap.set("n", "<leader>dx", ":DapTerminate<cr>")
vim.keymap.set("n", "<leader>dc", ":DapContinue<cr>")
vim.keymap.set("n", "<leader>dpr", ":lua require('dap-python').test_method()<cr>")
