function init_undotree()
	vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
end

return { "mbbill/undotree", event = "BufEnter", init = init_undotree }
