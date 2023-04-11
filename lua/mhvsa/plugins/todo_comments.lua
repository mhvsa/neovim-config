local function init()
	require("todo-comments").setup({})
end

return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	init = init,
	event = "BufEnter",
}
