require('base16-colorscheme').setup({
    base00 = '#000000',
    base01 = '#151515',
    base02 = '#303030',
    base03 = '#454545',
    base04 = '#c5c8c6',
    base05 = '#d2d4d3',
    base06 = '#dfe1e0',
    base07 = '#eceded',
    base08 = '#e84f4f',
    base09 = '#f39d21',
    base0A = '#f3b63e',
    base0B = '#a0cf5d',
    base0C = '#42717b',
    base0D = '#4e9fb1',
    base0E = '#8542ff',
    base0F = '#a16946',
})

vim.cmd [[
  exe "hi StatusInactive guibg=background guifg=".g:terminal_color_8
  exe "hi StatusNormal guifg=background guibg=".g:terminal_color_2
  exe "hi StatusReplace guifg=background guibg=".g:terminal_color_1
  exe "hi StatusInsert guifg=background guibg=".g:terminal_color_2
  exe "hi StatusCommand guifg=background guibg=".g:terminal_color_3
  exe "hi StatusVisual guifg=background guibg=".g:terminal_color_4
  exe "hi StatusTerminal guifg=background guibg=".g:terminal_color_5
  exe "hi NvimTreeGitDirty guifg=".g:terminal_color_1
  exe "hi NvimTreeGitNew guifg=".g:terminal_color_2
  exe "hi NvimTreeGitDeleted guifg=".g:terminal_color_1
  exe "hi NvimTreeGitRenamed guifg=".g:terminal_color_3
  exe "hi NvimTreeSpecialFile guifg=".g:terminal_color_5
  exe "hi NvimTreeExecFile guifg=".g:terminal_color_2
  exe "hi NvimTreeImageFile guifg=".g:terminal_color_7
  hi EndOfBuffer guifg=background
  hi LineNr guibg=background
  hi SignColumn guibg=background
  hi VertSplit guibg=background
  hi! link TabLineSel StatusInsert
  hi TabLine guibg=background
  hi TabLineFill guibg=background
  hi FoldColumn guibg=background
  hi DiffAdd guibg=background
  hi DiffChange guibg=background
  hi DiffDelete guibg=background
  hi DiffText guibg=background
]]
