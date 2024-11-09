local M = {}

M.setup = function()
  return {
    'goolord/alpha-nvim',
    requires = { 'echasnovski/mini.icons' },
    config = function()
      require 'alpha'.setup(require 'alpha.themes.startify'.config)
    end
  }
end

return M
