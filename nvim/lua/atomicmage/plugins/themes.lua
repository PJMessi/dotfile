local M = {}

local function SetTintedVim()
  return {
    'aktersnurra/no-clown-fiesta.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require("no-clown-fiesta").setup({
        transparent = true,
        styles = {
          comments = { italic = true },
          functions = {},
          keywords = {},
          lsp = {},
          match_paren = {},
          type = { bold = true },
          variables = {},
        },
      })

      vim.cmd.colorscheme 'no-clown-fiesta'

      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#282c34', fg = '#ffffff' }) -- Background color for the pop-up
      vim.api.nvim_set_hl(0, 'FloatBorder', { bg = '#282c34', fg = '#61afef' }) -- Border color for the pop-up

      -- Transparent background (The Primegan - atomicmage)
      -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    end
  }
end

local function SetColorBuddy()
  return {
    'tjdevries/colorbuddy.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("colorbuddy")
      -- -- -- or
      vim.cmd.colorscheme("gruvbuddy")

      -- Transparent background (The Primegan - atomicmage)
      -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    end
  }
end

local function SetRosePine()
  return {
    'rose-pine/neovim',
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("rose-pine").setup({
        -- styles = {
        --   bold = true,
        --   italic = true,
        --   transparency = false,
        -- },
        --
        -- highlight_groups = {
        --   Comment = { italic = true },
        --   Type = { bold = true, italic = true },
        --   ["@variable"] = { italic = false },
        --   ["@constant"] = { bold = true },
        --   ["@type"] = { bold = true },
        -- },
        --
        styles = {
          bold = true,
          italic = false,
          transparency = false,
        },

        highlight_groups = {
          Comment = { italic = true },
          Type = { bold = true },
          ["@constant"] = { bold = true },
          ["@type"] = { bold = true },
        },
      })

      vim.cmd.colorscheme 'rose-pine'

      -- Transparent background (The Primegan - atomicmage)
      -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
      -- vim.cmd.hi 'Comment gui=none'
    end,
  }
end

local function SetJetbrainsDracula()
  return {
    'xiantang/darcula-dark.nvim',
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.cmd.colorscheme 'darcula-dark'

      -- Transparent background (The Primegan - atomicmage)
      -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

      vim.cmd.hi 'Comment gui=none'
    end,
  }
end

M.setup = function(opts)
  return SetRosePine()
end

return M
