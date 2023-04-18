return {
	"lewis6991/gitsigns.nvim",
	event = "BufEnter",
	init = function()
		require("gitsigns").setup()
	end,
}
