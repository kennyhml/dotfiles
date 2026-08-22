local ziege_dir = '/home/kenny/dev/ziege.nvim'
local has_ziege = vim.uv.fs_stat(ziege_dir) ~= nil

local dependencies = {
  { 'nvim-mini/mini.icons', opts = {} },
}

if has_ziege then table.insert(dependencies, { dir = ziege_dir, name = 'ziege.nvim' }) end

return {
  'stevearc/oil.nvim',
  commit = 'b73018b75affd13fa38e2fc94ef753b465f770d7',
  dependencies = dependencies,
  config = function()
    local adapters = {}

    if has_ziege then
      require('ziege').setup {
        default_system = 'S4',
        daemon = {
          command = {
            'bash',
            '-lc',
            'set -a && source /home/kenny/dev/ziege/.env && exec /home/kenny/dev/abap-language-server/target/debug/abap-language-server',
          },
        },
      }

      adapters['abap://'] = 'ziege'
    end

    require('oil').setup {
      adapters = adapters,
    }
  end,
  lazy = false,
}
