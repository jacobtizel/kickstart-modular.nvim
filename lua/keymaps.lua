-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Enable J and K in visual mode to move lines around
vim.keymap.set("v", "J", "<cmd>m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", "<cmd>m '<-2<CR>gv=gv")

-- Cursor stays in place when joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- Keeps lines in the middle of the page with half-page scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Buffer swap
vim.keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Shortcut for Ex mode
vim.keymap.set('n', '<leader>E', vim.cmd.Ex, { desc = 'Open [E]x file explorer' })

-- Exit to normal mode in terminal with <Esc>
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Toggle line numbers
vim.keymap.set('n', '<Leader>tn', ':set relativenumber!<cr>', { desc = "toggle relative line numbers" })

-- when replacing, keeps current text in " register instead of replacing
-- vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Keep text in \" register instead of replacing" })

-- copies/pastes to/from system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank (until line end) to system clipboard" }) -- Y means y$
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]], { desc = "Paste from system clipboard" })

-- gone forever
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], { desc = "delete to black hole register" })

-- replace the word you are on throughout the file
vim.keymap.set("n", "<leader>rs", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace current word throughout file" })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- vim: ts=2 sts=2 sw=2 et
