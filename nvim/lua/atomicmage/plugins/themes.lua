local M = {}

local function SetTokyoNight()
  return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      -- vim.cmd.colorscheme("tokyonight")
      vim.cmd.colorscheme("tokyonight-night")
      -- vim.cmd.colorscheme("tokyonight-storm")
      -- vim.cmd.colorscheme("tokyonight-day")
      -- vim.cmd.colorscheme("tokyonight-moon")
    end
  }
end

local function SetGruvBox()
  return {
    'morhetz/gruvbox',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("gruvbox")
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

        styles = {
          bold = false,
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
  -- return SetGruvBox()
  -- return SetTokyoNight()
  -- return SetJetbrainsDracula()
end

return M
