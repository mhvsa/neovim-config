local function init()
	local null_ls = require("null-ls")
	null_ls.setup({
		sources = {
			null_ls.builtins.formatting.black,
		},
	})
end

return {
	"jose-elias-alvarez/null-ls.nvim",
	init = init,
}
