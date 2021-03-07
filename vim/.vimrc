"syntax highlighting
syntax on
"show (partial) command in status line
set showcmd
    
au BufRead,BufNewFile *.py set expandtab

"make cursor thin for insert mode"
if has("autocmd")
   au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
   au InsertEnter,InsertChange *
 \ if v:insertmode == 'i' |
 \   silent execute '!echo -ne "\e[6 q"' | redraw! |
\ elseif v:insertmode == 'r' |
\   silent execute '!echo -ne "\e[4 q"' | redraw! |
\ endif
au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

"no highlight search, last term searched for won't stay highlighted
set nohlsearch
"tab settings, work for python
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
"make backspaces more powerful
set backspace=indent,eol,start

"helps keep cursor centered, will scroll when 8 lines above bottom
set scrolloff=8

"will auto-source .vimrc in current folder if you have different .vimrcs for different projects
set exrc
set noerrorbells
set smartindent
au! FileType python setl nosmartindent
set nowrap
"search while typing search term
set incsearch
"gives error column
set signcolumn=yes
map <Down> <NOP>
map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>
imap jj <Esc>
" on entering vim, assign caps lock to esc, undo upon exiting vim
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
