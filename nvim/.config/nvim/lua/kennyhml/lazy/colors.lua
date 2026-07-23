return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        compile = false,
        undercurl = true,
        commentStyle = { italic = false },
        keywordStyle = { italic = false },
        typeStyle = {},
        transparent = true,
        dimInactive = true,
        terminalColors = true,
        theme = 'dragon',
        background = {
          dark = 'wave',
        },
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
            String = { fg = colors.palette.surimiOrange },
            Comment = { fg = colors.palette.springGreen },
            Function = { fg = colors.palette.carpYellow },
            Type = { fg = colors.palette.crystalBlue },
            Constant = { fg = colors.palette.waveRed },
            PreProc = { fg = colors.palette.autumnYellow },
            Boolean = { bold = false },
            Identifier = { fg = colors.palette.autumnYellow },

            ['@variable'] = { fg = colors.palette.lightBlue },
            ['@variable.member'] = { fg = colors.palette.autumnYellow },
            ['@variable.builtin'] = { fg = colors.palette.lightBlue },

            TelescopeTitle = { fg = theme.ui.special, bold = true },
            TelescopePromptNormal = { bg = theme.ui.bg_p1 },
            TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
            TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
            TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
            TelescopePreviewNormal = { bg = theme.ui.bg_dim },
            TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
          }
        end,
      }

      vim.cmd 'colorscheme kanagawa'
    end,
  },
}
