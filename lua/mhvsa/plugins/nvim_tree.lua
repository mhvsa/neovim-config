local function init_nvimtree()
	vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
end

return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	enabled = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({})
	end,
	init = init_nvimtree,
}
