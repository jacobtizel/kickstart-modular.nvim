-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Move Lines
vim.keymap.set("n", "<A-J>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<A-K>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<A-J>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<A-K>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<A-J>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<A-K>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Cursor stays in place when joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- Keeps lines in the middle of the page with half-page scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Buffer swap
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Shortcut for Ex mode
vim.keymap.set('n', '<leader>E', vim.cmd.Ex, { desc = 'Open [E]x file explorer' })

-- Terminal Mappings
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
vim.keymap.set("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to left window" })
vim.keymap.set("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to lower window" })
vim.keymap.set("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to upper window" })
vim.keymap.set("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to right window" })
vim.keymap.set("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
vim.keymap.set("t", "<c-_>", "<cmd>close<cr>", { desc = "which_key_ignore" })

-- Windows
vim.keymap.set("n", "<leader>ww", "<C-W>p", { desc = "Other window", remap = true })
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window", remap = true })
vim.keymap.set("n", "<leader>w-", "<C-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>w|", "<C-W>v", { desc = "Split window right", remap = true })
vim.keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split window right", remap = true })

-- Tabs
vim.keymap.set("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
vim.keymap.set("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
vim.keymap.set("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Toggle line numbers
vim.keymap.set('n', '<Leader>tn', ':set relativenumber!<cr>', { desc = "toggle relative line numbers" })

-- Add undo break-points
vim.keymap.set("i", ",", ",<c-g>u")
vim.keymap.set("i", ".", ".<c-g>u")
vim.keymap.set("i", ";", ";<c-g>u")

-- Better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Lazy
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- New file
vim.keymap.set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

-- Quickfix
vim.keymap.set("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Location List" })
vim.keymap.set("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Quickfix List" })
vim.keymap.set("n", "[q", vim.cmd.cprev, { desc = "Previous quickfix" })
vim.keymap.set("n", "]q", vim.cmd.cnext, { desc = "Next quickfix" })

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

-- open the current file in firefox
vim.keymap.set("n", "<leader>ff", "<cmd>!firefox %<CR>", { desc = "Open the current file in Firefox" })

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
