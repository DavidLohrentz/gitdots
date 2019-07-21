" Don't include vi compatibility
set nocompatible
" Turn off modelines
set modelines=0

" show line numbers
set number

" turn off beeping on error
set visualbell
set tabstop=4
"set colorcolumn=80

" show trailing whitespace chars
set list
set listchars=tab:>-,trail:.,extends:#,nbsp:.

" set the colorscheme
colo desert
syntax on

" Unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

" Unmap the insert mode arrow keys
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>
"
" Unmap visual mode arrow keys
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>
vno <down> <Nop>

" set the leader to the space key
let mapleader=" "
no <leader>d dd
no <leader>q :wq<CR>
no <leader>w :w<CR>
no <leader>u :u

" enter visual line mode with space space
no <leader><leader> V

"Copy and paste to system clipboard with leader
vno <leader>y "+y
vno <leader>d "+d
no <leader>p "+p
no <leader>P "+P
vno <leader>p "+p
vno <leader>P "+P
