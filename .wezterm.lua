-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- config.default_prog = { 'nu' }

config.default_cwd = "/Users/prajwalshrestha/projects/"

config.color_scheme = 'rose-pine'
config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.9
-- config.macos_window_background_blur = 10

-- FOR IMAGE BACKGROUND
-- local dimmer = { brightness = 0.01 }
-- config.background = {
--     {
--         source = {
--             File = '/Users/prajwalshrestha/Library/Mobile Documents/com~apple~CloudDocs/Wallpapers/sekiro.jpg'
--             -- File = '/Users/prajwalshrestha/Library/Mobile Documents/com~apple~CloudDocs/Wallpapers/hinata_3.JPG'
--             -- File = '/Users/prajwalshrestha/Library/Mobile Documents/com~apple~CloudDocs/Wallpapers/hinata2.png'
--             -- File = '/Users/prajwalshrestha/Library/Mobile Documents/com~apple~CloudDocs/Wallpapers/kame_house.jpeg'
--             -- File = '/Users/prajwalshrestha/Library/Mobile Documents/com~apple~CloudDocs/Wallpapers/malenia.jpeg'
--             -- File = '/Users/prajwalshrestha/Library/Mobile Documents/com~apple~CloudDocs/Wallpapers/team_7.jpg'
--         },
--         hsb = dimmer,
--         height = "Cover",
--         repeat_x = "NoRepeat",
--         repeat_y = "NoRepeat"
--     }
-- }

config.colors = {
    -- Rosepine color scheme highlight color bug fix.
    selection_fg = "Black",
    selection_bg = "#ffc273",

    -- TAB BAR CONFIGURATION
    tab_bar = {
        background = "#1c1c1c",

        -- Active tab styling
        active_tab = {
            bg_color = "#2c2c2c",
            fg_color = "#e5e5e5",
            italic = false,
            intensity = "Bold",
        },

        -- Inactive tabs styling
        inactive_tab = {
            bg_color = "#1c1c1c",
            fg_color = "#808080",
        },
        inactive_tab_hover = {
            bg_color = "#2c2c2c",
            fg_color = "#c0c0c0",
            italic = true,
        },

        -- New tab button styling
        new_tab = {
            bg_color = "#1c1c1c",
            fg_color = "#808080",
        },
        new_tab_hover = {
            bg_color = "#2c2c2c",
            fg_color = "#e5e5e5",
            italic = true,
        },
    },
}

-- Jetbrains Mono
config.font_size = 14.0
config.font = wezterm.font {
    family = 'JetBrains Mono',
    -- family = 'Maple Mono',
    -- disable ligatures
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
}
config.font_rules = {}

-- Monaspace
-- config.font_size = 14.0
-- config.font = wezterm.font {
--     family = 'Monaspace Neon'
-- }
-- config.font_rules = {
--     -- {
--     --     italic = false,
--     --     intensity = "Bold",
--     --     font = wezterm.font {
--     --         family = 'Monaspace Radon',
--     --     }
--     -- },
--     {
--         italic = true,
--         intensity = "Normal",
--         font = wezterm.font {
--             -- italic = true,
--             family = 'Monaspace Radon'
--         }
--     }
-- }

-- Additional tab bar configurations for simplicity
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 20
config.tab_bar_at_bottom = true

-- and finally, return the configuration to wezterm
return config
