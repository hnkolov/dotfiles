set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
syntax on
call plug#begin()
Plug 'vijaymarupudi/nvim-fzf'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'google/vim-jsonnet'
Plug 'hashivim/vim-terraform'
Plug 'dag/vim-fish'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'rust-lang/rust.vim'
Plug 'averms/black-nvim'
call plug#end()

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'deus'
let g:airline_powerline_fonts = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

set laststatus=2
set relativenumber
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
nnoremap <SPACE> <Nop>
let mapleader = " "

" Buffer stuff
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>t :enew<cr>
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>w :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Telescope
" " Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" NERDTree
"
" Toggle
nmap  <leader>n :NERDTreeFind<CR>
" Close NT when opening a file
let NERDTreeQuitOnOpen=1
" Show hidden files
let NERDTreeShowHidden=1
" No help lines
let NERDTreeMinimalUI = 1
" Arrows instead of ascii
let NERDTreeDirArrows = 1

" Terraform formatting
let g:terraform_align = 1
let g:terraform_fmt_on_save = 1

let g:rustfmt_autosave = 1

" LSPs
lua require'lspconfig'.gopls.setup{}
lua require'lspconfig'.bashls.setup{}

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
