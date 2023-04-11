local function init_telescope()
	-- Setup keymaps
	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
	vim.keymap.set("n", "<C-p>", builtin.git_files, {})
	vim.keymap.set("n", "<leader>ps", function()
		builtin.grep_string({ search = vim.fn.input("Grep > ") })
	end)
	vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})

	-- Setup plugins
	local telescope = require("telescope")
	telescope.load_extension("ui-select")
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.1",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-ui-select.nvim" },
	init = init_telescope,
}
