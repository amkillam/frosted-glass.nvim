# frosted-glass.nvim

A soft, ethereal colorscheme for Neovim inspired by pastel aesthetics and translucent UI designs.

## Features
- **Soft Palette:** Gentle purple backgrounds with rosewater accents.
- **Readable Contrast:** Uses specific dim and bright foregrounds to separate logic from boilerplate.
- **Modern UI:** Custom highlights for Telescope, Treesitter, and floating windows.

## Installation

### (Lazy.nvim)

```lua
{
    "amkillam/frosted-glass.nvim",
    name = "frosted-glass",
    lazy = false,
    config = function()
        vim.cmd.colorscheme("frosted-glass")
    end
}
