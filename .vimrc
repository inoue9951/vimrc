" 文字コード uft-8
set fenc=utf-8
" ~ファイル, .swpファイルを作成しない
set nobackup
set noswapfile
" 外部変更を自動で読み込む
set autoread
" コマンドを右下に表示
set showcmd
" 行番号の表示
set number
" カーソルがある行のハイライト
set cursorline
" 行末の一文字先までカーソル移動できるようにする
set virtualedit=onemore
" オートインデント
set autoindent
" ビープ音を全て資格表示に置き換える
set visualbell
" tab => space 2
set expandtab
set tabstop=2
set shiftwidth=2

" 行末スペースを自動削除
autocmd BufWritePre * :%s/\s\+$//ge

" マッピング
" インサートモード
inoremap <C-Space> <esc>
inoremap <C-f> <Left>
inoremap <C-j> <Right>
inoremap <C-o> <S-Left>
inoremap <C-w> <S-Right>
inoremap <C-a> <esc>^i
inoremap <C-e> <esc>$i
" ノーマルモード
noremap <C-a> <esc>^
noremap <C-e> <esc>$

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

" 以下NeoBundleの設定
" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundleCheck

" インストールするプラグインを記述

" molokai カラースキーム
NeoBundle 'tomasr/molokai'

call neobundle#end()
" NeoBundleはここまで

" カラースキーマ設定
colorscheme molokai
if &term =~ "xtrem-256color" || "screen-256color"
  set t_Co=256
  set t_Sf=[3%dm
  set t_Sb=[4%dm
elseif &term =~ "xterm-color"
  set t_Co=8
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

syntax enable
hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68e

