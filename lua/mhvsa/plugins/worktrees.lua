local function init()
	require("telescope").load_extension("git_worktree")
	local wk = require("which-key")

	-- Project
	wk.register({
		g = {
			w = {
				name = "Git Worktree",
				w = {
					function()
						require("telescope").extensions.git_worktree.git_worktrees()
					end,
					"Toggle Worktrees",
				},
				c = {
					function()
						require("telescope").extensions.git_worktree.create_git_worktree()
					end,
					"Create Worktree",
				},
			},
		},
	}, { prefix = "<leader>" })
end

return {
	"ThePrimeagen/git-worktree.nvim",
	lazy = true,
	init = init,
}
