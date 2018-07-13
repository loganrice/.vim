packadd minpac

call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('vim-jp/syntax-vim-ex')
call minpac#add('chriskempson/vim-tomorrow-theme')
call minpac#add('machakann/vim-highlightedyank')


colorscheme Tomorrow-Night
set inccommand=split "interactive preview with search replace 

let mapleader = " "
tnoremap <leader>h <c-\><c-n><c-w>h
tnoremap <leader>j <c-\><c-n><c-w>j
tnoremap <leader>k <c-\><c-n><c-w>k
tnoremap <leader>l <c-\><c-n><c-w>l
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l

if has('nvim')
	tnoremap <Esc> <C-\><C-n>
	tnoremap <A-[> <Esc>
	" Switching between split windows:
endif

