local wezterm = require 'wezterm'
local helpers = require 'helpers'

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end
helpers.apply_to_config(config)

return config
