" Line numbers
" turn on hybrid line numbers 
:set number relativenumber
" turn off relative numbers in insert mode, on in other modes
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" set the leader
let mapleader=","

" set the local leader to backslash
let maplocalleader = "\\""

no <leader>d dd
no <leader>q :wq<CR>
no <leader>w :w<CR>
no <leader>u :u

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

" Turn on Vim regex 'very magic' mode
nnoremap / /\v
vnoremap / /\v
"
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
au Filetype python ino <leader>'' ""<##><Esc>?"<CR>i
au Filetype cfg ino <leader>'' ""<##><Esc>?"<CR>i
au Filetype conf ino <leader>'' ""<##><Esc>?"<CR>i
au Filetype vim ino <leader>'' ""<##><Esc>?"<CR>i
au Filetype text ino <leader>'' ""<##><Esc>?"<CR>i

" In python create <##> outside '', go to 2nd" and change to insert mode
au Filetype python ino <leader>' ''<##><Esc>?'<CR>i
au Filetype cfg ino <leader>' ''<##><Esc>?'<CR>i
au Filetype conf ino <leader>' ''<##><Esc>?'<CR>i
au Filetype vim ino <leader>' ''<##><Esc>?'<CR>i
au Filetype text ino <leader>' ''<##><Esc>?'<CR>i

" same thing for parentheses
au Filetype python ino <leader>9 ()<##><Esc>?)<CR>i
au Filetype cfg ino <leader>9 ()<##><Esc>?)<CR>i
au Filetype conf ino <leader>9 ()<##><Esc>?)<CR>i
au Filetype vim ino <leader>9 ()<##><Esc>?)<CR>i
au Filetype text ino <leader>9 ()<##><Esc>?)<CR>i

" same thing for square brackets
au Filetype python ino <leader>[ []<##><Esc>?]<CR>i
au Filetype cfg ino <leader>[ []<##><Esc>?]<CR>i
au Filetype conf ino <leader>[ []<##><Esc>?]<CR>i
au Filetype vim ino <leader>[ []<##><Esc>?]<CR>i
au Filetype text ino <leader>[ []<##><Esc>?]<CR>i

" same thing for curly brackets
au Filetype python ino <leader>[[ {}<##><Esc>?}<CR>i
au Filetype cfg ino <leader>[[ {}<##><Esc>?}<CR>i
au Filetype conf ino <leader>[[ {}<##><Esc>?}<CR>i
au Filetype vim ino <leader>[[ {}<##><Esc>?}<CR>i
au Filetype text ino <leader>[[ {}<##><Esc>?}<CR>i

" same for format string parentheses
au Filetype python ino <leader>f (f"")<##><Esc>?f<CR>2li
" same thing for print f string
au Filetype python ino <leader>pf print(f"")<##><Esc>?f<CR>2li

" same for quotation marks inside  parentheses
au Filetype python ino <leader>. ('')<##><Esc>?'<CR>i

" make background transparent
syntax on
hi Normal guibg=NONE ctermbg=NONE
highlight NonText ctermbg=none
"
set t_Co=256
" set t_AB=^[[48;5;%dm
" set t_AF=^[[38;5;%dm
set colorscheme desert256
"au Filetype cfg colorscheme desert
"au Filetype conf colorscheme desert
au Filetype python colorscheme python

nnoremap <CR> :nohlsearch<cr>

" navigate by display lines
noremap j gj
noremap k gk

