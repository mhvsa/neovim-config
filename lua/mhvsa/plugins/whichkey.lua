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

	-- Git
	wk.register({
		g = {
			name = "Git",
			g = { "Toggle git" },
			P = {
				function()
					vim.cmd([[Git push]])
				end,
				"Push",
			},
			p = {
				function()
					vim.cmd([[Git pull]])
				end,
				"Pull",
			},
			S = {
				function()
					require("telescope.builtin").git_branches()
				end,
				"Switch branch",
			},
		},
	}, { prefix = "<leader>" })
	-- Git diff resolution

	wk.register({
		["<leader>gR"] = {
			function()
				vim.cmd([[diffget //2]])
			end,
			"Get right side",
		},
		["<leader>gL"] = {
			function()
				vim.cmd([[diffget //3]])
			end,
			"Get left side",
		},
	})

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

	-- CMP
	wk.register({
		["<C-Space>"] = { "Complete completion" },
		["<C-y>"] = { "Confirm completion" },
		["<C-p>"] = { "Previous completion" },
		["<C-n>"] = { "Next completion" },
	})

	-- LSP
	wk.register({
		name = "LSP",
		v = {
			name = "Virtual text",
			d = { "Toggle diagnostics" },
			h = { "Toggle help" },
			c = {
				name = "Code actions",
				a = { "Toggle code actions" },
			},
			r = {
				name = "Rename / References",
				a = { "Toggle references" },
				n = { "Toggle rename" },
			},
			w = {
				name = "Workspace",
				s = { "Toggle workspace symbols" },
				d = {
					function()
						require("trouble").toggle()
					end,
					"Toggle workspace diagnostics",
				},
			},
		},
	}, { prefix = "<leader>" })

	-- Misc
	wk.register({
		d = { "Delete line to empty register" },
		f = { "Format buffer" },
		s = { "Search and replace" },
		u = { "Toggle undo tree" },
		x = { "Create executable" },
		y = { "Yank to system clipboard" },
		Y = { "Yank line to system clipboard" },
		w = {
			function()
				vim.cmd("w")
			end,
			"Save file",
		},
		["<leader>"] = { "Source file" },
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
