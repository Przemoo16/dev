return {
	"krady21/compiler-explorer.nvim",

	config = function()
		require("compiler-explorer").setup({
			line_match = {
				highlight = true,
				jump = true,
			},
		})
	end,
}
