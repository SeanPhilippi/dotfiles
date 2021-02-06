    1 syntax on
    2 
    3 "make cursor thin for insert mode"
    4 if has("autocmd")
    5   au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
    6   au InsertEnter,InsertChange *
    7 \ if v:insertmode == 'i' |
    8 \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    9 \ elseif v:insertmode == 'r' |
   10 \   silent execute '!echo -ne "\e[4 q"' | redraw! |
   11 \ endif
   12 au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
   13 endif
   14 
   15 "no highlight search, last term searched for won't stay highlighted
   16 set nohlsearch
   17 "tab settings, work for python
   18 set tabstop=8 softtabstop=4
   19 set shiftwidth=4
   20 set expandtab
   21 "helps keep cursor centered, will scroll when 8 lines above bottom
   22 set scrolloff=8
   23 
   24 "will auto-source .vimrc in current folder if you have different .vimrcs for different projects
   25 set exrc
   26 set noerrorbells
   27 set smartindent
   28 set nowrap
   29 "search while typing search term
   30 set incsearch
   31 "gives error column
   32 set signcolumn=yes
   33 map <Down> <NOP>
   34 map <Up> <NOP>
   35 map <Left> <NOP>
   36 map <Right> <NOP>
   37 imap jj <Esc>
   38 " on entering vim, assign caps lock to esc, undo upon exiting vim
   39 au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
   40 au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

