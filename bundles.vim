set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" plugin management
NeoBundleFetch 'Shougo/neobundle.vim'

" file tree
NeoBundle 'scrooloose/nerdtree'
" file tree and tabs interaction
NeoBundle 'jistr/vim-nerdtree-tabs'
" commenting
NeoBundle 'scrooloose/nerdcommenter'
" fuzzy file open
NeoBundle 'kien/ctrlp.vim'
" git integration
NeoBundle 'tpope/vim-fugitive'
" syntax checking on save
NeoBundle 'scrooloose/syntastic'
" TextMate-style snippets
NeoBundle 'msanders/snipmate.vim'
" manipulation of surraunding parens, quotes, etc.
NeoBundle 'tpope/vim-surround'
" vertical alignment tool
NeoBundle 'tsaleh/vim-align'
" 'ag' searching integration
NeoBundle 'rking/ag.vim'
" text object based on indent level (ai, ii)
NeoBundle 'austintaylor/vim-indentobject'
" global search & replace
NeoBundle 'greplace.vim'
" better looking statusline
NeoBundle 'bling/vim-airline'
" plugin for visually displaying indent levels
NeoBundle 'Indent-Guides'
" end certain structures automatically, e.g. begin/end etc.
NeoBundle 'tpope/vim-endwise'
" automatic closing of quotes, parenthesis, brackets, etc.
NeoBundle 'Raimondi/delimitMate'
" url based hyperlinks for text files
NeoBundle 'utl.vim'
" async external commands with output in vim
NeoBundle 'tpope/vim-dispatch'
" git diff in the gutter (sign column) and stages/reverts hunks
NeoBundle 'airblade/vim-gitgutter'
" hi-speed html coding
NeoBundle 'mattn/emmet-vim'

" Ruby/Rails
" rails support
NeoBundle 'tpope/vim-rails'
" bundler integration (e.g. :Bopen)
NeoBundle 'tpope/vim-bundler'
" rake integration
NeoBundle 'tpope/vim-rake'

" Color themes
NeoBundle 'dracula/vim'

" Syntax support
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'Puppet-Syntax-Highlighting'
NeoBundle 'JSON.vim'
NeoBundle 'tpope/vim-cucumber'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'Blackrush/vim-gocode'
NeoBundle 'groenewege/vim-less'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'mtscout6/vim-cjsx'
NeoBundle 'vitaly/vim-literate-coffeescript'
NeoBundle 'rust-lang/rust', {'rtp': 'src/etc/vim/'}

" Other
" Support for user-defined text objects
NeoBundle 'kana/vim-textobj-user'
" replacement for the repeat mapping (.) to support plugins
NeoBundle 'tpope/vim-repeat'
" colorschemes
NeoBundle 'flazz/vim-colorschemes'
" multiple cursors (a la Sublime)
NeoBundle 'terryma/vim-multiple-cursors'
" inline Ruby execution
NeoBundle 't9md/vim-ruby-xmpfilter'
" autocomplete
NeoBundle 'valloric/youcompleteme'
" tags
NeoBundle 'majutsushi/tagbar'

call neobundle#end()

filetype plugin indent on

