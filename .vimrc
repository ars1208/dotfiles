set modelines=0

# Normally we use vim-extensions. If you want true vi-compatibility
# remove change the following statements
set nocompatible # Use Vim defaults instead of 100% vi compatibility
set backspace=2  # more powerful backspacing

# Don't write backup file if vim is being called by "crontab -e"
# au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
# Don't write backup file if vim is being called by "chpass"
# au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1
:syntax enable

set fenc=utf-8 # 文字コードをUtFに変換
set laststatus=2 # ステータス行を常に表示
set backspace=indent,eol,start # 挿入モードでバックスペースで削除できるようにする
set number # 行番号を表示
set ignorecase # 検索において大文字と小文字の違いを無視
set smartcase # 大文字含む文字列で検索した場合、ignorecaseを上書き
set incsearch # インクリメンタルサーチ
set hlsearch # 検索結果をハイライト表示
set cursorline # 現在の行を強調
set noerrorbells # エラーメッセージの表示時にピープを鳴らさない
set noswapfile
set autoindent # 改行した時に同じレベルのインデントにしてくれる
