local function build()
	vim.cmd([[Copilot setup]])
end

return {
	"github/copilot.vim",
	build = build,
}
