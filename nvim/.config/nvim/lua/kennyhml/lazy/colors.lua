return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        compile = false,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = { bold = true },
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = true,
        dimInactive = true,

        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = 'none', -- Removes the color diff on signbar
              },
            },
          },
        },

        overrides = function(colors)
          local theme = colors.theme
          return {
            -- Basic tokens
            String = { fg = colors.palette.surimiOrange },
            Comment = { fg = colors.palette.springGreen },
            Function = { fg = colors.palette.carpYellow },
            Identifier = { fg = colors.palette.waveAqua2 },
            Type = { fg = colors.palette.waveRed },
            ['@variable'] = { fg = colors.palette.lightBlue },

            TelescopeTitle = { fg = theme.ui.special, bold = true },
            TelescopePromptNormal = { bg = theme.ui.bg_p1 },
            TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
            TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
            TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
            TelescopePreviewNormal = { bg = theme.ui.bg_dim },
            TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
          }
        end,
        theme = 'dragon',
      }

      local test = 10
      vim.cmd 'colorscheme kanagawa'
    end,
  },
}
