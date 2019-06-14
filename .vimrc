" \     /|\__   __/(       )(  ____ )(  ____ \
" | )   ( |   ) (   | () () || (    )|| (    \/
" | |   | |   | |   | || || || (____)|| |      
" ( (   ) )   | |   | |(_)| ||     __)| |      
"  \ \_/ /    | |   | |   | || (\ (   | |      
"   \   /  ___) (___| )   ( || ) \ \__| (____/\
"    \_/   \_______/|/     \||/   \__/(_______/
 
" Miguel Cruz's vimrc
" ----------------------------------------------------------------------
" |   			     General Settings                                  |
" ----------------------------------------------------------------------

set number " Enable line numbers
syntax on  " Enable syntax highlighting

color desert " Enable Vim theme

if has("autocmd")
    filetype plugin indent on
    "           │     │    └──── Enable file type detection
    "           │     └───────── Enable loading of indent file
    "           └─────────────── Enable loading of plugin files
endif

set tabstop=4                  " ┐
set softtabstop=4              " │ Set global <TAB> settings
set shiftwidth=4               " │ http://vimcasts.org/e/2
set expandtab                  " ┘

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" ----------------------------------------------------------------------
" |   			        Plugin Stuff                                   |
" ----------------------------------------------------------------------
" Load up all our plugins
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif


autocmd vimenter * NERDTree " Open up Nerdtree startup

" Syntastic Recommended Settings 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
