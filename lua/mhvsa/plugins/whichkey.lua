local function init_wk()
	local wk = require("which-key")

	-- Project
	wk.register({
		p = {
			name = "Project",
			v = { "Explore" },
			s = { "Search text" },
			f = { "Find file" },
		},
	}, { prefix = "<leader>" })

	-- Harpoon
	wk.register({
		a = { "Harpoon current file" },
	}, { prefix = "<leader>" })

	-- Debugging
	wk.register({
		D = {
			name = "Debugger",
			b = {
				function()
					require("dap").toggle_breakpoint()
				end,
				"Toggle breakpoint",
			},
			s = {
				function()
					require("dap").continue()
				end,
				"Start or resume session",
			},
			d = {
				function()
					require("dap").repl.open()
				end,
				"Degbugger shell",
			},
		},
	}, { prefix = "<leader>" })

	-- Refactor
	wk.register({
		r = {
			name = "Refactor",
			r = {
				function()
					require("telescope").extensions.refactoring.refactors()
				end,
				"Open refactoring options",
			},
		},
	}, { prefix = "<leader>" })
end

return {
	"folke/which-key.nvim",
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
		require("which-key").setup({
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		})
	end,
	init = init_wk,
}
