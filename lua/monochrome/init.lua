local M = {}

--------------------------------------------------------------------
-- 1️⃣  Palette
--------------------------------------------------------------------
M.colors = {
  fg        = "#CCCCCC",
  bg        = "#212121",
  gray1     = "#333333",
  gray2     = "#474747",
  gray3     = "#5A5A5A",
  lightGray = "#AFAFAF",
  white     = "#FFFFFF",

  red    = "#FF6B6B",
  green  = "#98C379",
  yellow = "#E5C07B",
}
local c = M.colors

local function hi(name, opts) vim.api.nvim_set_hl(0, name, opts) end

function M.setup()
  vim.cmd "hi clear"
  if vim.fn.exists "syntax_on" then vim.cmd "syntax reset" end
  vim.o.background = "dark"
  vim.o.termguicolors = true

  -- Base editor
  hi("Normal",        { fg = c.fg, bg = c.bg })
  hi("CursorLine",    { bg = c.gray1 })
  hi("CursorColumn",  { bg = c.gray1 })
  hi("Visual",        { bg = c.gray2 })
  hi("Search",        { fg = c.black, bg = c.yellow })
  hi("IncSearch",     { fg = c.black, bg = c.yellow })
  hi("LineNr",        { fg = c.gray3, bg = c.bg })
  hi("CursorLineNr",  { fg = c.white, bg = c.gray1 })
  hi("Comment",       { fg = c.gray3, italic = true })
  hi("Constant",      { fg = c.lightGray })
  hi("String",        { fg = c.lightGray })
  hi("Character",     { fg = c.lightGray })
  hi("Number",        { fg = c.lightGray })
  hi("Boolean",       { fg = c.lightGray })
  hi("Float",         { fg = c.lightGray })
  hi("Identifier",    { fg = c.white })
  hi("Function",      { fg = c.white })
  hi("Statement",     { fg = c.white })
  hi("Conditional",   { fg = c.white })
  hi("Repeat",        { fg = c.white })
  hi("Label",         { fg = c.white })
  hi("Operator",      { fg = c.fg })
  hi("Keyword",       { fg = c.white })
  hi("Exception",     { fg = c.white })
  hi("PreProc",       { fg = c.white })
  hi("Include",       { fg = c.white })
  hi("Define",        { fg = c.white })
  hi("Macro",         { fg = c.white })
  hi("PreCondit",     { fg = c.white })
  hi("Type",          { fg = c.white })
  hi("StorageClass",  { fg = c.white })
  hi("Structure",     { fg = c.white })
  hi("Typedef",       { fg = c.white })
  hi("Special",       { fg = c.white })
  hi("SpecialChar",   { fg = c.white })
  hi("Tag",           { fg = c.white })
  hi("Delimiter",     { fg = c.fg })
  hi("SpecialComment",{ fg = c.gray3 })
  hi("Debug",         { fg = c.white })
  hi("Underlined",    { underline = true })
  hi("Ignore",        { fg = c.gray2 })
  hi("Error",         { fg = c.white, bg = c.red, bold = true })
  hi("Todo",          { fg = c.black, bg = c.yellow, bold = true })

  -- LSP diagnostics
  hi("DiagnosticError",          { fg = c.red })
  hi("DiagnosticWarn",           { fg = c.yellow })
  hi("DiagnosticInfo",           { fg = c.green })
  hi("DiagnosticHint",           { fg = c.gray3 })
  hi("DiagnosticVirtualTextError",{ bg = c.gray1, fg = c.red })
  hi("DiagnosticVirtualTextWarn", { bg = c.gray1, fg = c.yellow })
  hi("DiagnosticVirtualTextInfo", { bg = c.gray1, fg = c.green })
  hi("DiagnosticVirtualTextHint", { bg = c.gray1, fg = c.gray3 })
  hi("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
  hi("DiagnosticUnderlineWarn",  { undercurl = true, sp = c.yellow })
  hi("DiagnosticUnderlineInfo",  { undercurl = true, sp = c.green })
  hi("DiagnosticUnderlineHint",  { undercurl = true, sp = c.gray3 })

  -- Git signs / gutter
  hi("GitSignsAdd",    { fg = c.green })
  hi("GitSignsChange", { fg = c.yellow })
  hi("GitSignsDelete", { fg = c.red })
  hi("DiffAdd",        { bg = "#2b3328", fg = c.green })
  hi("DiffChange",     { bg = "#3b3d44", fg = c.yellow })
  hi("DiffDelete",     { bg = "#3c2121", fg = c.red })
  hi("DiffText",       { bg = "#4e3a3a", fg = c.white })

  hi("Pmenu",        { fg = c.fg, bg = c.gray1 })
  hi("PmenuSel",     { fg = c.white, bg = c.gray2 })
  hi("PmenuSbar",    { bg = c.gray2 })
  hi("PmenuThumb",   { bg = c.gray3 })
  hi("WildMenu",     { fg = c.white, bg = c.gray2 })
  hi("Folded",       { fg = c.gray3, bg = c.gray1 })
  hi("FoldColumn",   { fg = c.gray3, bg = c.bg })
  hi("SignColumn",   { bg = c.bg })
  hi("ColorColumn",  { bg = c.gray2 })
  hi("Conceal",      { fg = c.gray3 })
  hi("MatchParen",   { bg = c.gray2, bold = true })
end

return M
