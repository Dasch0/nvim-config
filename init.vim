syntax on

set termguicolors
colorscheme retrobox
set tabstop=2 shiftwidth=4 expandtab

"Enable fuzzy file search"
set path+=**
set wildmenu

"Show working directory in status"
set laststatus=2
set statusline=%F
set statusline+=%=
set statusline+=%{getcwd()}

"TextEdit may fail if not hidden"
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=5

" To use a custom highlight for the popup window,
" " change Pmenu to your highlight group
" highlight link EchoDocPopup Pmenu

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" show line numbers"
set number

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" C-tags configuration
set tags=./tags;/

" Remap default ctags navigation keys
nnoremap <silent> gd <C-]>
nnoremap <silent> dg <C-T>
map <silent> gt :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <silent> gy :tjump <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> gi :tjump <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> gr :grep <C-R>=expand("<cword>")<CR><CR>
