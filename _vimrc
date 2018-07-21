" Plugins
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('vim-jp/syntax-vim-ex')
call minpac#add('chriskempson/vim-tomorrow-theme')
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('sbdchd/neoformat')
call minpac#add('tpope/vim-vinegar')

" Need to install fzf seperatly then add path
set rtp+=~/.fzf/bin/fzf
call minpac#add('junegunn/fzf')

" Settings
colorscheme Tomorrow-Night
set background=dark

" Support NeoVim Terminal Buffer cursor insert mode and normal mode
hi! TermCursorNC ctermfg=15 guifg=#fdf6e3 ctermbg=14 guibg=#93a1a1 cterm=NONE gui=NONE

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
  "toggles to normal mode w Esc in terminal
  tnoremap <Esc> <C-\><C-n> 
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

tnoremap <expr> <A-p> '<C-\><C-n>"'.nr2char(getchar()).'pi' " Alt p to access the yank registryj
tnoremap <expr> π '<C-\><C-n>"'.nr2char(getchar()).'pi' " Alt p on Mac to access the yank registryj

" Ctrl p mapping for fzf fuzzy search
nnoremap <c-p> :FZF<cr>
nmap ; :buffers<CR>
nmap <Leader>t :files<CR>
nmap <Leader>r :tags<CR>

"Use ag for fzf searching
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
