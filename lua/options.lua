-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!

if vim.loop.os_uname().sysname == "Windows_NT" then
     HOME = os.getenv("UserProfile")
else
     HOME = os.getenv("HOME")
end

-- Set highlight on search
vim.o.hlsearch = false
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true


-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

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
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Fix file names not supporting an @
vim.opt.isfname:append("@-@")

-- keeps 8 lines at top or bottom when scrolling
vim.opt.scrolloff = 8

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 100
vim.o.timeoutlen = 300

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.g.neovide_transparency = 0.95
  vim.g.neovide_theme = 'auto'
  vim.g.neovide_cursor_vfx_mode = 'railgun'
end
-- vim: ts=2 sts=2 sw=2 et
