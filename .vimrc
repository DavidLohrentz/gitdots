" turn on hybrid line numbers 
:set number relativenumber

" set the leader to the space key
let mapleader=","

" set the local leader to backslash
let maplocalleader = "\\""

no <leader>d dd
no <leader>q :wq<CR>
no <leader>w :w<CR>
no <leader>u :u

" enter visual line mode with space space
" no <leader><leader> V

" copy pasta to system clipboard with leader
no <leader>y "+y
no <leader>d "+d
no <leader>p "+p
no <leader>P "+P
vno <leader>p "+p
vno <leader>P "+P

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

" Fix mode foobar
ino :q!<CR> <Esc>:q!<CR>
ino :wq<CR> <Esc>:wq<CR>

" map style checking
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>

" Enable folding (hide indented code)
set foldmethod=indent
set foldlevel=99
no <leader>z za

" go to next instance of "<##>" delete it
" and change to insert mode
ino <leader>, <Esc>/<##><Enter>"_c4l
no <leader>, <Esc>/<##><Enter>"_c4l

" In python create <##> outside "", go to 2nd" and change to insert mode
au Filetype python ino <leader>' ""<##><Esc>?"<CR>i
au Filetype cfg ino <leader>' ""<##><Esc>?"<CR>i
au Filetype conf ino <leader>' ""<##><Esc>?"<CR>i
au Filetype vim ino <leader>' ""<##><Esc>?"<CR>i

" same thing for parentheses
au Filetype python ino <leader>9 ()<##><Esc>?)<CR>i
au Filetype cfg ino <leader>9 ()<##><Esc>?)<CR>i
au Filetype conf ino <leader>9 ()<##><Esc>?)<CR>i
au Filetype vim ino <leader>9 ()<##><Esc>?)<CR>i
" same for format string parentheses
au Filetype python ino <leader>( (f"{}")<##><Esc>?f<CR>2li

au Filetype sh colorscheme koehler
au Filetype cfg colorscheme desert
au Filetype conf colorscheme desert
au Filetype python colorscheme python
