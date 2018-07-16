" Plugins
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('vim-jp/syntax-vim-ex')
call minpac#add('chriskempson/vim-tomorrow-theme')
"call minpac#add('lifepillar/vim-solarized8')
call minpac#add('machakann/vim-highlightedyank')

" Need to install fzf seperatly then add path
set rtp+=~/.fzf
call minpac#add('junegunn/fzf')

" Settings
colorscheme Tomorrow-Night
set background=dark
"set termguicolors
"colorscheme solarized8
"colorscheme solarized8_high
"colorscheme solarized8_flat

" Support NeoVim Terminal Buffer cursor insert mode and normal mode
hi! link TermCursor Cursor
hi TermCursorNC ctermfg=235 ctermbg=242 guifg=#002b36 guibg=#586e75 guisp=NONE cterm=NONE gui=NONE
hi! ColorColumn cterm=NONE gui=NONE ctermfg=NONE guifg=NONE ctermbg=0 guibg=#073642
hi! Cursor cterm=NONE gui=NONE ctermfg=15 guifg=#fdf6e3 ctermbg=4 guibg=#268bd2
hi! link lCursor Cursor


set inccommand=split "interactive preview with search replace 
let mapleader = " "
set expandtab "change tabs to spaces
set tabstop=2
set shiftwidth=2

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab


" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Numbers
set number
set numberwidth=5

"switch between the last two files
nnoremap <Leader><Leader> <C-^>

if has('nvim')
  tnoremap <Esc> <C-\><C-n> "toggles to normal mode w Esc in terminal
  tnoremap <A-[> <Esc>
  " Switching between split windows:
  tnoremap <leader>h <c-\><c-n><c-w>h
  tnoremap <leader>j <c-\><c-n><c-w>j
  tnoremap <leader>k <c-\><c-n><c-w>k
  tnoremap <leader>l <c-\><c-n><c-w>l
  nnoremap <leader>h <c-w>h
  nnoremap <leader>j <c-w>j
  nnoremap <leader>k <c-w>k
  nnoremap <leader>l <c-w>l
endif

