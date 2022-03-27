require('base16-colorscheme').setup({
    base00 = "#11121D",
    base01 = "#06080A",
    base02 = "#212234",
		base03 = "#161720",
    base04 = "#A0A8CD",
    base05 = "#5d617c",
    base06 = "#A0A8CD",
    base07 = "#A0A8CD",
    base08 = "#e48c73",
    base09 = "#e48c73",
    base0A = "#D7A65F",
    base0B = "#95C561",
    base0C = "#38A89D",
    base0D = "#7199EE",
    base0E = "#A485DD",
    base0F = "#d07ab0",
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
