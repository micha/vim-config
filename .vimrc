set t_Co=256

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

au BufNewFile,BufRead *.json setf javascript
au BufNewFile,BufRead .bash_aliases setf sh
au BufNewFile,BufRead Makefile setf make|set noet
au BufWinLeave * mkview
au BufWinEnter * silent loadview

set autoindent
set shiftwidth=2
set tabstop=2
set ignorecase
set ruler
set showmatch
filetype indent on
set expandtab
set dictionary="/home/micha/.dict"
set foldmethod=indent

function! Mosh_Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
endfunction

:inoremap <Tab> <C-R>=Mosh_Tab_Or_Complete()<CR>

:com NT NERDTreeToggle

colo railscasts
syntax on
