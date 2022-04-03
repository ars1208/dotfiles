" Configuration file for vim
set modelines=0         " CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible        " Use Vim defaults instead of 100% vi compatibility
set backspace=2         " more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1
:syntax enable

" 文字コードをUtFに変換
set fenc=utf-8

" 行番号の表示
set number

" 現在の行を強調
set cursorline

" エラーメッセージの表示時にピープを鳴らさない
set noerrorbells

" ステータス行を常に表示
set laststatus=2

" 改行した時に同じレベルのインデントにしてくれる
set autoindent

