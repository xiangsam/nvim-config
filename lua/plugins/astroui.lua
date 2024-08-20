-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

local light_theme, dark_theme = "astrolight", "catppuccin"
---@type LazySpec
return {
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      -- change colorscheme
      colorscheme = dark_theme,
      -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
      -- Icons can be configured throughout the interface
      icons = require "plugins.ui.icons",
      text_icons = require "plugins.ui.text_icons",
    },
  },
  -- Theming
  { "Shatur/neovim-ayu", lazy = true },
  { "mcchrish/zenbones.nvim", lazy = true, dependencies = { "rktjmp/lush.nvim" } },
  { "navarasu/onedark.nvim", lazy = true },
  { "nyoom-engineering/oxocarbon.nvim", lazy = true },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    opts = {
      background = { light = "latte", dark = "mocha" },
    },
  },
}
