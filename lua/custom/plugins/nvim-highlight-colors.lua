return {
	'brenoprata10/nvim-highlight-colors',
	opts = {} ,
	keys = {
		{ "<leader>tc", function () require("nvim-highlight-colors").toggle() end, desc = "toggle css colors", },
	}
}
