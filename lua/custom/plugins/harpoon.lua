return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim"
	},
	config = function ()
		local harpoon = require("harpoon")
		harpoon:setup({})
		-- basic telescope configuration
		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end
			require("telescope.pickers").new({}, {
				prompt_title = "Harpoon",
				finder = require("telescope.finders").new_table({
					results = file_paths,
				}),
				previewer = conf.file_previewer({}),
				sorter = conf.generic_sorter({}),
			}):find()
		end
		vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end, { desc = "Open harpoon window" })
	end,

	keys = {
		{ "<leader>hf", function() require("harpoon"):list():append() end, desc = "harpoon file", },
		{ "<leader>ha", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },
		{ "<leader>hh", function() require("harpoon"):list():select(1) end, desc = "Harpoon: Select file 1" },
		{ "<leader>hj", function() require("harpoon"):list():select(2) end, desc = "Harpoon: Select file 2" },
		{ "<leader>hk", function() require("harpoon"):list():select(3) end, desc = "Harpoon: Select file 3" },
		{ "<leader>hl", function() require("harpoon"):list():select(4) end, desc = "Harpoon: Select file 4" },
		{ "<leader>h;", function() require("harpoon"):list():select(5) end, desc = "Harpoon: Select file 5" },

		{ "<C-S-P>", function() require("harpoon"):list():prev() end },
		{ "<C-S-N>", function() require("harpoon"):list():next() end }
	}
}
