function init_fugitive()
	vim.keymap.set("n", "<leader>gg", vim.cmd.Git)
end

return { "tpope/vim-fugitive", lazy = false, init = init_fugitive }
