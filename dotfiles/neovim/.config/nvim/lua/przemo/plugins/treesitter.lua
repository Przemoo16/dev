return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		local languages = { "go", "lua", "odin", "python", "vim" }

		require("nvim-treesitter").install(languages)

		vim.api.nvim_create_autocmd("FileType", {
			pattern = languages,
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
