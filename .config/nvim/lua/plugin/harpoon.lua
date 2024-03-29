return {
	"ThePrimeagen/harpoon",
	event = "VeryLazy",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({})

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():append()
			print("File added to Harpoon list")
		end)
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		vim.keymap.set("n", "<C-h>", function()
			harpoon:list():select(1)
			print("Moved to file 1")
		end)
		vim.keymap.set("n", "<C-t>", function()
			harpoon:list():select(2)
			print("Moved to file 2")
		end)
		vim.keymap.set("n", "<C-n>", function()
			harpoon:list():select(3)
			print("Moved to file 3")
		end)
		vim.keymap.set("n", "<C-s>", function()
			harpoon:list():select(4)
			print("Moved to file 4")
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-P>", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "<C-S-N>", function()
			harpoon:list():next()
		end)
	end,
}
