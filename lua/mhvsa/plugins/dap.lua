local function init_dap()
	local dap = require("dap")
	dap.adapters.lldb = {
		type = "executable",
		command = "/usr/bin/lldb-vscode-15",
		name = "lldb",
	}

	-- Configurations
	local lldb = {
		{
			name = "Launch",
			type = "lldb",
			request = "launch",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			end,
			cwd = "${workspaceFolder}",
			stopOnEntry = false,
			args = {},
		},
	}

	dap.configurations.cpp = lldb
	dap.configurations.c = dap.configurations.cpp
	dap.configurations.rust = dap.configurations.cpp
end
return { "mfussenegger/nvim-dap", init = init_dap }
