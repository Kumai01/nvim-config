" Set leader key to space
let mapleader = " "

" --- File Explorer (Netrw) ---
let g:netrw_liststyle = 3  " Tree view
let g:netrw_banner = 0     " Hide banner

" --- General Sets ---
set number                  " Show line numbers
set relativenumber          " Show relative line numbers
set tabstop=4               " Tab width
set softtabstop=4           " Insert mode tab width
set shiftwidth=4            " Indentation width
set expandtab               " Use spaces instead of tabs
set smartindent             " Smart auto-indenting
set nowrap                  " Disable line wrapping
set termguicolors           " Enable 24-bit RGB colors
set scrolloff=8             " Keep 8 lines above/below cursor
set signcolumn=yes          " Always show the sign column
set isfname+=@-@            " Include '@' in file name characters (good for node)
set updatetime=50           " Faster completion

" --- Key Mappings ---

" File Explorer
nnoremap <leader>pv :Ex<CR>

" Escapes
inoremap kj <ESC>
tnoremap <Esc> <C-\><C-n>

" Save and Quit
nnoremap <leader>w :w<CR>
nnoremap <leader>W :wa<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :wq<CR>

" Cursor Movement Logic
" Keep cursor in place when joining lines
nnoremap J mzJ`z
" Keep cursor centered during scrolling
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
" Keep cursor centered during search
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap G Gzz

" System Clipboard (Yanking)
" Requires vim-gtk or neovim
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

" Search and Replace word under cursor
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

" Make file executable
nnoremap <silent> <leader>x :!chmod +x %<CR>

" --- Auto Commands ---

" Toggle relative numbers based on mode
augroup NumberToggle
    autocmd!
    autocmd InsertEnter * set norelativenumber
    autocmd InsertLeave * set relativenumber
augroup END

" --- Neovim Specifics ---
if has('nvim')
    " Treesitter folding (Requires nvim-treesitter plugin to be installed)
    set foldmethod=expr
    set foldexpr=v:lua.vim.treesitter.foldexpr()
    set foldlevel=99
else
    " Fallback for standard Vim
    set foldmethod=indent
endif

" --- Line Number Colors ---

" Change the color of the inactive line numbers
highlight LineNr guifg=#5eacd3

" Change the color of the current active line number
highlight CursorLineNr guifg=#ff00ff gui=bold

" If you want the background of the number column to match your editor background
highlight SignColumn guibg=NONE
highlight LineNr guibg=NONE
