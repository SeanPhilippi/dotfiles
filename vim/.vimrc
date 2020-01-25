" Use the space key as our leader. Put this near the top of your vimrc
let mapleader = "\<Space>"

" Split edit your vimrc. Type space, v, r in sequence to trigger
nmap <leader>vr :sp $MYVIMRC<cr>

" Source (reload) your vimrc. Type space, s, o in sequence to trigger
nmap <leader>so :source $MYVIMRC<cr>

" map w!! for writing when sudo permissions are required
cmap w!! %!sudo tee > /dev/null
