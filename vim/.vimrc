syntax on

set noerrorbells
set smartindent
set nowrap
set incsearch

map <Down> <NOP>
map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>
imap jj <Esc>
" on entering vim, assign caps lock to esc, undo upon exiting vim
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Use the space key as our leader. Put this near the top of your vimrc
" let mapleader = "\<Space>"

" Split edit your vimrc. Type space, v, r in sequence to trigger
" nmap <leader>vr :sp $MYVIMRC<cr>

" Source (reload) your vimrc. Type space, s, o in sequence to trigger
" nmap <leader>so :source $MYVIMRC<cr>

" map w!! for writing when sudo permissions are required
" cmap w!! %!sudo tee > /dev/null

