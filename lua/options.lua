-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

if vim.loop.os_uname().sysname == "Windows_NT" then
     HOME = os.getenv("UserProfile")
else
     HOME = os.getenv("HOME")
end

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Set relative line numbers
vim.wo.relativenumber = true;

-- Enable mouse mode
vim.o.mouse = 'a'

-- Encoding
vim.opt.encoding = "utf-8"

-- 4 space indents
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.smartindent = true

-- Using undo trees instead of swap files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = HOME .. "/.vim/undodir"
vim.opt.undofile = true

-- highlights as you are searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
--vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Fix file names not supporting an @
vim.opt.isfname:append("@-@")

-- keeps 8 lines at top or bottom when scrolling
vim.opt.scrolloff = 8

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 100
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- vim: ts=2 sts=2 sw=2 et
