local function init_refactoring()
	require("refactoring").setup({
		prompt_func_return_type = {
			go = false,
			java = false,
			cpp = false,
			c = false,
			h = false,
			hpp = false,
			cxx = false,
		},
		prompt_func_param_type = {
			go = false,
			java = false,
			cpp = false,
			c = false,
			h = false,
			hpp = false,
			cxx = false,
		},
		printf_statements = {},
		print_var_statements = {},
	})
	-- load refactoring Telescope extension
	require("telescope").load_extension("refactoring")
end

return {
	"ThePrimeagen/refactoring.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-treesitter/nvim-treesitter" },
	},
	init = init_refactoring,
}
