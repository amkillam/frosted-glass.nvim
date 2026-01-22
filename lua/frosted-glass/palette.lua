local M = {}

M.colors = {
    -- Core
    bg          = "#a97eab", -- Base purple
    fg          = "#DDC7CF", -- Text

    -- UI Extensions (Darkened/Shifted for contrast)
    bg_dark     = "#8E6890", -- Sidebar/Statusline (Dimmed base)
    bg_float    = "#745375", -- Floating windows
    bg_highlight= "#BCA0BE", -- Current line (Lightened base)
    bg_visual   = "#DC8A78", -- Rosewater (from config selection)

    fg_dim      = "#7478a1", -- Dim text from config
    fg_light    = "#EFF1F5", -- Bright text

    -- Accents
    black       = "#0E2534",
    red         = "#d15e77",
    green       = "#7ad166",
    yellow      = "#DF8E1D",
    blue        = "#50D0DF",
    magenta     = "#B189B3",
    cyan        = "#518897",
    white       = "#DDC7CF",

    -- Brights
    bright_red  = "#fc9aaf",
    bright_green= "#25b855",
    bright_cyan = "#6FABB4",
    bright_mag  = "#B489B5",

    -- Special
    git_add     = "#25b855",
    git_change  = "#DF8E1D",
    git_del     = "#d15e77",
}

return M
