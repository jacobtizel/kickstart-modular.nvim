-- tailwind-tools.lua
return {
  'luckasRanarison/tailwind-tools.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  opts = {
    document_color = {
      -- defaults to "inline", currently set since not supported in nvim stable (0.9.5)
      kind = 'background',
    },
  }, -- your configuration
}
