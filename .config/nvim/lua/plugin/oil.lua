return {
	"stevearc/oil.nvim",
	event = "VeryLazy",
	config = function()
		require("oil").setup({
			skip_confirm_for_simple_edits = true,
			view_options = {
				show_hidden = true,
			},
		})
		vim.keymap.set("n", "-", "<cmd>Oil<cr>", {})
	end,
}
