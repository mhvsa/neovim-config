local function enable_for_nvim_lua(library)
	local path = vim.loop.fs_realpath(vim.api.nvim_buf_get_name(0))
	if path then
		path = vim.fs.normalize(path)
		if vim.fs.basename(path) == ".nvim.lua" then
			library.enabled = true
			library.plugins = true
		end
	end
end

local function init_neodev()
	require("neodev").setup({
		override = function(root_dir, library)
			enable_for_nvim_lua(library)
		end,
	})
end

return {
	"folke/neodev.nvim",
	init = init_neodev,
	lazy = false,
}
