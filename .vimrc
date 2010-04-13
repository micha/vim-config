set t_Co=256

if has("autocmd")
  autocmd FileType python set omnifunc=pythoncomplete#Complete
  autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
  autocmd FileType css set omnifunc=csscomplete#CompleteCSS
  autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
  autocmd FileType php set omnifunc=phpcomplete#CompletePHP
  autocmd FileType c set omnifunc=ccomplete#Complete

  autocmd BufNewFile,BufRead *.json setf javascript
  autocmd BufNewFile,BufRead .bash_aliases setf sh
  autocmd BufNewFile,BufRead Makefile setf make|set noet

  "au BufWinLeave * mkview
  "au BufWinEnter * silent loadview

  autocmd BufWritePost ~/.vimrc       so ~/.vimrc
  autocmd BufWritePost vimrc          so ~/.vimrc
endif

if version >= 600
  syntax enable
  filetype on
  filetype indent on
  filetype plugin on
else
  syntax on
endif

set autoindent
set shiftwidth=2
set tabstop=2
set ignorecase
set smartcase
set ruler
set incsearch
set showmatch
set pastetoggle=<C-P>
set expandtab
set dictionary="/home/micha/.dict"
set foldmethod=indent
set foldlevelstart=99
set hidden

nmap <C-c> :w !coffee -npe
vmap <C-c> :w !coffee -npe

nmap aa :b#
nmap ah :bp
nmap al :bn
nmap aK :bd

nmap a01 :b1
nmap a02 :b2
nmap a03 :b3
nmap a04 :b4
nmap a05 :b5
nmap a06 :b6
nmap a07 :b7
nmap a08 :b8
nmap a09 :b9
nmap a10 :b10
nmap a11 :b11
nmap a12 :b12
nmap a13 :b13
nmap a14 :b14
nmap a15 :b15
nmap a16 :b16
nmap a17 :b17
nmap a18 :b18
nmap a19 :b19
nmap a20 :b20
nmap a21 :b21
nmap a22 :b22
nmap a23 :b23
nmap a24 :b24
nmap a25 :b25
nmap a26 :b26
nmap a27 :b27
nmap a28 :b28
nmap a29 :b29
nmap a30 :b30
nmap a31 :b31
nmap a32 :b32
nmap a33 :b33
nmap a34 :b34
nmap a35 :b35
nmap a36 :b36
nmap a37 :b37
nmap a38 :b38
nmap a39 :b39
nmap a40 :b40
nmap a41 :b41
nmap a42 :b42
nmap a43 :b43
nmap a44 :b44
nmap a45 :b45
nmap a46 :b46
nmap a47 :b47
nmap a48 :b48
nmap a49 :b49
nmap a50 :b50
nmap a51 :b51
nmap a52 :b52
nmap a53 :b53
nmap a54 :b54
nmap a55 :b55
nmap a56 :b56
nmap a57 :b57
nmap a58 :b58
nmap a59 :b59
nmap a60 :b60
nmap a61 :b61
nmap a62 :b62
nmap a63 :b63
nmap a64 :b64
nmap a65 :b65
nmap a66 :b66
nmap a67 :b67
nmap a68 :b68
nmap a69 :b69
nmap a70 :b70
nmap a71 :b71
nmap a72 :b72
nmap a73 :b73
nmap a74 :b74
nmap a75 :b75
nmap a76 :b76
nmap a77 :b77
nmap a78 :b78
nmap a79 :b79
nmap a80 :b80
nmap a81 :b81
nmap a82 :b82
nmap a83 :b83
nmap a84 :b84
nmap a85 :b85
nmap a86 :b86
nmap a87 :b87
nmap a88 :b88
nmap a89 :b89
nmap a90 :b90
nmap a91 :b91
nmap a92 :b92
nmap a93 :b93
nmap a94 :b94
nmap a95 :b95
nmap a96 :b96
nmap a97 :b97
nmap a98 :b98
nmap a99 :b99

function! Mosh_Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
endfunction

:inoremap <Tab> <C-R>=Mosh_Tab_Or_Complete()<CR>

colo railscasts
