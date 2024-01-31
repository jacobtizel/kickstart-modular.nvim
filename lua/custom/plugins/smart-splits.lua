return {
	"mrjones2014/smart-splits.nvim",

	config = function ()
		-- recommended mappings
		-- resizing splits
		-- these keymaps will also accept a range,
		-- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
		vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left, { desc= "Resize 3 lines left" } )
		vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down, { desc= "Resize 3 lines down" } )
		vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up, { desc= "Resize 3 lines up" } )
		vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right, { desc= "Resize 3 lines right" } )
		-- moving between splits
		vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left, { desc= "Move a screen left" } )
		vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down, { desc= "Move a screen down" } )
		vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up, { desc= "Move a screen up" } )
		vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right, { desc= "Move a screen right" } )
		-- swapping buffers between windows
		vim.keymap.set('n', '<leader><C-h>', require('smart-splits').swap_buf_left, { desc= "Swap with buffer to left" } )
		vim.keymap.set('n', '<leader><C-j>', require('smart-splits').swap_buf_down, { desc= "Swap with buffer beneath" } )
		vim.keymap.set('n', '<leader><C-k>', require('smart-splits').swap_buf_up, { desc= "Swap with buffer to right" } )
		vim.keymap.set('n', '<leader><C-l>', require('smart-splits').swap_buf_right, { desc= "Swap with buffer above" } )
	end,
}
