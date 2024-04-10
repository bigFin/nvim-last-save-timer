# NVim Last Save Timer

A simple Lua module for Neovim that adds a "time since last save" component to the lualine status bar, designed for users of Lazy.nvim for plugin management.

## Installation

To use this module, ensure you have Lazy.nvim installed and configured as your Neovim package manager. Then, add the following line to your Lazy.nvim configuration to install `nvim-last-save-timer`:

```lua
{
  'bigFin/nvim-last-save-timer',
  config = function()
    require('lualine').setup {
      sections = {
        lualine_c = {
          { 'filename' },
          require('nvim-last-save-timer').config()
        },
      },
    }
  end
}

