return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
	},
	config = function()
		-- enable the fzf extension
		pcall(require("telescope").load_extension, "fzf")

		local set = vim.keymap.set
		local builtin = require("telescope.builtin")

		set("n", "<leader>sf", builtin.find_files)
		set("n", "<leader>sd", builtin.diagnostics)
		set("n", "<leader>sn", function()
			builtin.find_files({ cwd = vim.fn.stdpath("config") })
		end)
	end,
}
