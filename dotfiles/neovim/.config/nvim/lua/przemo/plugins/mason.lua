return {
	"mason-org/mason.nvim",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},

	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			ensure_installed = {
				"bashls",
				"clangd",
				"gopls",
				"htmx",
				"lua_ls",
				"ruff",
				"ty",
			},
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"golangci-lint",
				"hadolint",
				"markdownlint",
				"prettier",
				"shellcheck",
				"stylua",
			},
		})
	end,
}
