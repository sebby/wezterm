-- I am helpers.lua and I should live in ~/.config/wezterm/helpers.lua
local wezterm = require 'wezterm'

-- This is the module table that we will export
local module = {}

-- This function is private to this module and is not visible
-- outside.
local function private_helper()
  wezterm.log_error 'hello!'
end

-- define a function in the module table.
-- Only functions defined in `module` will be exported to
-- code that imports this module.
-- The suggested convention for making modules that update
-- the config is for them to export an `apply_to_config`
-- function that accepts the config object, like this:
function module.apply_to_config(config)
  private_helper()

  config.color_scheme = 'Catppuccin Latte'
  config.color_scheme = 'Catppuccin Mocha'

    -- Voir cette page pour avoir le nom prècis des thémes.
    -- https://wezfurlong.org/wezterm/colorschemes/g/#gruvbox-dark-hard-base16
  config.color_scheme = 'Gruvbox dark, hard (base16)'
  config.color_scheme = 'Gruvbox light, hard (base16)'
  config.color_scheme = 'Gruvbox Material (Gogh)'
  config.font = wezterm.font 'JetBrains Mono'


 -- config.font = wezterm.font 'Fira Code'
  -- You can specify some parameters to influence the font selection;
  -- for example, this selects a Bold, Italic font variant.
  -- config.font =
  -- wezterm.font('JetBrains Mono', { weight = 'Bold', italic = true })

  -- config.font = wezterm.font 'Fira Code'
  -- config.font = wezterm.font 'MesloLGM Nerd Font Mono'
  -- config.font = wezterm.font 'SauceCodePro NFM'
  -- config.font = wezterm.font_with_fallback {
  -- 'Fira Code',
  -- 'Ubuntu',
  -- }

  config.font_size = 14
  -- config.line_height = 1.2
  config.tab_bar_at_bottom = true
end

-- return our module table
return module


