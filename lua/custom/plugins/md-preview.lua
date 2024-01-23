return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
	keys = {
		{ "<leader>md", "<Plug>MarkdownPreviewToggle", desc = "Markdown Preview Toggle" },
	}
}
