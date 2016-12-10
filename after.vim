" This file is loaded from after/plugin/after.vim
" which means it loads AFTER the rest of the plugins

NeoBundleCheck
NeoBundleDocs

source ~/.vim/bindings.vim
source ~/.vim/plugins-override.vim

if filereadable(expand("~/.local-after.vim"))
  echo "~/.local-after.vim is deprecated, please move it to ~/.vimrc.after"
  source ~/.local-after.vim
endif

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif

if has('gui_running')
  if filereadable(expand("~/.local-gui.vim"))
    echo "~/.local-gui.vim is deprecated, please move it to ~/.gvimrc.after"
    source ~/.local-gui.vim
  endif

  if filereadable(expand("~/.gvimrc.after"))
    source ~/.gvimrc.after
  endif
end

" -- Begin custom configuration --
" ~* ========================== *~
colorscheme dracula

set expandtab
set tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" Cursor
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" Bindings
imap jj <Esc>
vmap nn <Esc>
nmap <Leader>u <C-E>
nmap pp :setlocal paste! paste?<cr>
map <c-,> <c-w><
map <c-m> <c-w>>
map rr :set expandtab<CR>:retab<CR>
map <C-c> "+y<CR>"

" XMP filter
let g:xmpfilter_cmd = "seeing_is_believing"

autocmd FileType ruby nmap <buffer> <Leader>m <Plug>(seeing_is_believing-mark)
autocmd FileType ruby xmap <buffer> <Leader>m <Plug>(seeing_is_believing-mark)
autocmd FileType ruby imap <buffer> <Leader>m <Plug>(seeing_is_believing-mark)

autocmd FileType ruby nmap <buffer> <Leader>k <Plug>(seeing_is_believing-clean)
autocmd FileType ruby xmap <buffer> <Leader>k <Plug>(seeing_is_believing-clean)
autocmd FileType ruby imap <buffer> <Leader>k <Plug>(seeing_is_believing-clean)

" xmpfilter compatible
autocmd FileType ruby nmap <buffer> <D-r> <Plug>(seeing_is_believing-run_-x)
autocmd FileType ruby xmap <buffer> <D-r> <Plug>(seeing_is_believing-run_-x)
autocmd FileType ruby imap <buffer> <D-r> <Plug>(seeing_is_believing-run_-x)

" auto insert mark at appropriate spot.
autocmd FileType ruby nmap <buffer> <Leader>l <Plug>(seeing_is_believing-run)
autocmd FileType ruby xmap <buffer> <Leader>l <Plug>(seeing_is_believing-run)
autocmd FileType ruby imap <buffer> <Leader>l <Plug>(seeing_is_believing-run)
