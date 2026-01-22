local M = {}
local palette = require("frosted-glass.palette").colors

function M.setup()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "frosted-glass"

	local c = palette
	local set_hl = function(g, o)
		vim.api.nvim_set_hl(0, g, o)
	end

	-- Base
	set_hl("Normal", { fg = c.fg, bg = c.bg })
	set_hl("NormalFloat", { fg = c.fg_light, bg = c.bg_float })
	set_hl("FloatBorder", { fg = c.magenta, bg = c.bg_float })
	set_hl("Cursor", { fg = c.bg, bg = c.bg_visual })
	set_hl("CursorLine", { bg = c.bg_highlight })
	set_hl("LineNr", { fg = c.bg_float })
	set_hl("CursorLineNr", { fg = c.white, bold = true })
	set_hl("Visual", { fg = c.fg_light, bg = c.bg_visual })
	set_hl("SignColumn", { bg = c.bg })
	set_hl("StatusLine", { fg = c.fg_light, bg = c.bg_dark })

	-- Syntax
	set_hl("Comment", { fg = c.fg_dim, italic = true })
	set_hl("String", { fg = c.green })
	set_hl("Function", { fg = c.blue, bold = true })
	set_hl("Keyword", { fg = c.magenta, italic = true })
	set_hl("Type", { fg = c.cyan })
	set_hl("Constant", { fg = c.bright_mag })
	set_hl("Variable", { fg = c.fg })
	set_hl("Identifier", { fg = c.fg })
	set_hl("Operator", { fg = c.white })
	set_hl("Search", { fg = c.fg_light, bg = c.yellow })

	-- Treesitter
	set_hl("@variable", { fg = c.fg })
	set_hl("@property", { fg = c.cyan })
	set_hl("@function", { fg = c.blue })
	set_hl("@keyword", { fg = c.magenta, italic = true })

	-- UI Plugins
	set_hl("TelescopeNormal", { bg = c.bg_dark })
	set_hl("TelescopeBorder", { fg = c.bg_highlight, bg = c.bg_dark })
	set_hl("GitSignsAdd", { fg = c.git_add })
	set_hl("GitSignsChange", { fg = c.git_change })
	set_hl("GitSignsDelete", { fg = c.git_del })
end

return M
