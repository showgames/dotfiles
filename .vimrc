" ファイル形式別のプラグライン・インデントを有効にする
filetype plugin indent on
" シンタックスハイライトを有効にする
syntax on

set nowrap

set hlsearch
set ignorecase
set smartcase

set autoindent

set ruler
set number
set list
set wildmenu
set showcmd

set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set smarttab

set clipboard=unnamed

nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h

"-----------------------------------------------------
" .vimrcを瞬時に開く
nnoremap <Space><Space>. :e $MYVIMRC<CR>
" .vimrcの設定を反映
nnoremap <Space><Space>.. :<C-u>source $MYVIMRC<CR>
"-----------------------------------------------------

" ----------------------------------------------------
" Schemeのための設定
autocmd FileType scheme setlocal expandtab shiftwidth=2
" ----------------------------------------------------

"---------------------------------------------------
"Start Neobundle Settings.
"---------------------------------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" プラグイン追加"
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neocomplete.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合,
" インストールするかどうか尋ねてくれるように設定
" 毎回聞かれると邪魔な場合もあるので, この設定は任意
NeoBundleCheck

"--------------------------------------------------
"End Neobundle Settings.
"--------------------------------------------------

