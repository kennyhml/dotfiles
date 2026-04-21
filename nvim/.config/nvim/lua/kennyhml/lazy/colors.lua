return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    -- lazy = false,
    config = function()
      require('tokyonight').setup {
        style = 'night',
        styles = {
          comments = { italic = false },
          keywords = { italic = false },
          sidebars = 'dark',
          floats = 'dark',
        },
        on_highlights = function(hl, _)
          hl['@variable'] = { fg = '#9cdcfe' }

          -- Not a fan of having different color for builtins
          hl['@variable.builtin'] = hl['@variable']
          hl['@type.builtin'] = hl['@type']
          hl['@keyword.import'] = hl['@keyword']
        end,
        on_colors = function() end,
      }
      vim.cmd.colorscheme 'tokyonight-night'
    end,
  },
  -- {
  --   'rose-pine/neovim',
  --   name = 'rose-pine',
  --   config = function()
  --     require('rose-pine').setup {}
  --   end,
  -- },
  -- { 'ellisonleao/gruvbox.nvim', priority = 1000, config = true },
  -- { 'rebelot/kanagawa.nvim', priority = 1000, config = true },
}
