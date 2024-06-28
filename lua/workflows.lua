-- navigate to vault
vim.keymap.set("n", "<leader>oo", ":cd D:\\Nextcloud\\Notes<cr>")
--
-- convert note to template and remove leading white space
vim.keymap.set("n", "<leader>on", ":ObsidianTemplate note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>")
-- strip date from note title and replace dashes with spaces
-- must have cursor on title
vim.keymap.set("n", "<leader>of", ":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>")
-- for review workflow
-- move file in current buffer to zettelkasten folder
vim.keymap.set("n", "<leader>ok", ':!move "%:p" "D:\\Nextcloud\\Notes\\zettelkasten"<cr>:bd<cr>')
-- delete file in current buffer
vim.keymap.set("n", "<leader>odd", ':!del "%:p"<cr>:bd<cr>')