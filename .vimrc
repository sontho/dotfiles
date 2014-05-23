 set nocompatible
 filetype plugin indent off
 if has('vim_starting')
     set runtimepath+=~/.vim/bundle/neobundle.vim/
         call neobundle#rc(expand('~/.vim/bundle/'))
         endif
         NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
         NeoBundle 'git://github.com/Shougo/neocomplcache.git'
         NeoBundle 'git://github.com/Shougo/unite.vim.git'
         NeoBundle 'git://github.com/Shougo/vimshell.git'
         NeoBundle 'git://github.com/Shougo/vimproc.git'
         NeoBundle 'git://github.com/vim-scripts/taglist.vim.git'
         NeoBundle 'git://github.com/Lokaltog/vim-powerline.git'
         filetype plugin on
"=============================================================================
         "" neocomplcache
	 " Disable AutoComplPop.
	 let g:acp_enableAtStartup = 0
	 " Use neocomplcache.
	 let g:neocomplcache_enable_at_startup = 1
	 " Use smartcase.
	 let g:neocomplcache_enable_smart_case = 1
	 " Set minimum syntax keyword length.
	 let g:neocomplcache_min_syntax_length = 3
	 let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
	
	 " Define dictionary.
	 let g:neocomplcache_dictionary_filetype_lists = {
	     \ 'default' : ''
	         \ }
	
	         " Plugin key-mappings.
	         inoremap <expr><C-g>     neocomplcache#undo_completion()
	         inoremap <expr><C-l>     neocomplcache#complete_common_string()
	
	         " Recommended key-mappings.
	         " <CR>: close popup and save indent.
	         inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
	         function! s:my_cr_function()
	           return neocomplcache#smart_close_popup() . "\<CR>"
	           endfunction
	           " <TAB>: completion.
	           inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	           " <C-h>, <BS>: close popup and delete backword char.
	           inoremap <expr><C-h>  neocomplcache#smart_close_popup()."\<C-h>"
	           inoremap <expr><BS>   neocomplcache#smart_close_popup()."\<C-h>"
	           inoremap <expr><C-y>  neocomplcache#close_popup()
	           inoremap <expr><C-e>  neocomplcache#cancel_popup()filetype indent on
colorscheme hybrid
set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=2 "画面上でタブ文字が占める幅
set shiftwidth=2 "自動インデントでずれる幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
" 動作環境との統合関連の設定

 " OSのクリップボードをレジスタ指定無しで Yank, Put 出来るようにする
 set clipboard=unnamed,unnamedplus
 " マウスの入力を受け付ける
 set mouse=a
 " Windows でもパスの区切り文字を / にする
 set shellslash
 " コマンドラインの設定

 " コマンドラインモードでTABキーによるファイル名補完を有効にする
 set wildmenu wildmode=list:longest,full
 " コマンドラインの履歴を10000件保存する
 set history=10000

 " ビープの設定

 "ビープ音すべてを無効にする
 set visualbell t_vb=
 set noerrorbells "エラーメッセージの表示時にビープを鳴らさない
 set laststatus=2   " ステータス行を常に表示
 set cmdheight=2    " メッセージ表示欄を2行確保
 set showmatch      " 対応する括弧を強調表示
 set helpheight=999 " ヘルプを画面いっぱいに開く
 
  " カーソル移動関連の設定

  set backspace=indent,eol,start " Backspaceキーの影響範囲に制限を設けない
  set whichwrap=b,s,h,l,<,>,[,]  " 行頭行末の左右移動で行をまたぐ
  set scrolloff=8                " 上下8行の視界を確保
  set sidescrolloff=16           " 左右スクロール時の視界を確保
  set sidescroll=1               " 左右スクロールは一文字づつ行う
 
 " ファイル処理関連の設定

 set confirm    " 保存されていないファイルがあるときは終了前に保存確認
 set hidden     "
 "保存されていないファイルがあるときでも別のファイルを開くことが出来る
 set autoread   "外部でファイルに変更がされた場合は読みなおす
 set nobackup   " ファイル保存時にバックアップファイルを作らない
 set noswapfile " ファイル編集中にスワップファイルを作らない

 " 検索/置換の設定
 
 set hlsearch   " 検索文字列をハイライトする
 set incsearch  " インクリメンタルサーチを行う
 set ignorecase " 大文字と小文字を区別しない
 set smartcase  "
 "大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
 set wrapscan   " 最後尾まで検索を終えたら次の検索で先頭に移る
 set gdefault   " 置換の時 g オプションをデフォルトで有効にする
