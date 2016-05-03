" ファイル形式別のプラグライン・インデントを有効にする
filetype plugin indent on
"シンタックスハイライトを有効にする
syntax on
colorscheme zenburn
hi Comment ctermfg=White
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
set cmdheight=2
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set smarttab

set clipboard=unnamed

"-----------------------------------------------------
"Start key-bind Settings
"-----------------------------------------------------
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
" .vimrcを瞬時に開く
nnoremap <Space><Space>. :e $MYVIMRC<CR>
" .vimrcの設定を反映
nnoremap <Space><Space>.. :<C-u>source $MYVIMRC<CR>
"-----------------------------------------------------
"End key-bind Settings
"-----------------------------------------------------

" ----------------------------------------------------
" Schemeのための設定
autocmd FileType scheme setlocal expandtab shiftwidth=2
" ----------------------------------------------------

"---------------------------------------------------
"Start clang-format Settings
"---------------------------------------------------
map <C-K> :pyf /usr/local/share/clang/clang-format.py<cr>
imap <C-K> <c-o> :pyf /usr/local/share/clang/clang-format.py<cr>
"---------------------------------------------------
"End clang-format Settings
"---------------------------------------------------

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
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'jyota/vimColors'
NeoBundle 'vim-scripts/DoxygenToolkit.vim'
NeoBundleLazy 'vim-jp/cpp-vim', {
            \ 'autoload' : {'filetypes' : 'cpp'}
            \}
NeoBundle 'justmao945/vim-clang'
" Set clang options for vim-clang
let g:clang_c_options = '-std=c11'
let g:clang_cpp_options = '-std=c++1z -stdlib=libc++ --pedantic-errors'

NeoBundle 'aharisu/vim_goshrepl'
NeoBundle 'aharisu/vim-gdev'
vmap <CR> <Plug>(gosh_repl_send_block)

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

