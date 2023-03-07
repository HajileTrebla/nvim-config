call plug#begin('~/.vim/plugged')

 
" Plugin Section
 Plug 'junegunn/goyo.vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'stevearc/vim-arduino'
 Plug 'stevearc/dressing.nvim'
 Plug 'norcalli/nvim-colorizer.lua'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'tomasiser/vim-code-dark'
 Plug 'morhetz/gruvbox'
 Plug 'scrooloose/nerdtree'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
 Plug 'airblade/vim-gitgutter'
 Plug 'vim-test/vim-test'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'nvim-treesitter/nvim-treesitter'
 Plug 'lambdalisue/nerdfont.vim'
 Plug 'vimwiki/vimwiki'
 Plug 'chipsenkbeil/vimwiki-server.nvim', { 'tag': 'v0.1.0-alpha.5' }
 Plug 'artur-shaik/vim-javacomplete2'
 Plug 'prettier/vim-prettier', {
   \ 'do': 'yarn install --frozen-lockfile --production',
   \ 'branch': 'release/0.x'
   \ }
 Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
 Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
 Plug 'mbbill/undotree'

 call plug#end()

"theme

"let g:airline_theme="solarized"
"let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1

" let g:airline_solarized_bg='dark'
" let g:airline_solarized_bg='dark'

" let g:airline_powerline_fonts = 1

" if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
" endif

" unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''

colorscheme gruvbox
highlight Normal guibg=none

"Header
let &titlestring = @% 
    set title

" Basic Settings
syntax on
imap <Tab> <C-t>
imap <S-Tab> <C-d>
set encoding=utf-8
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set number relativenumber
set nu
set termguicolors
set guicursor=n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50
    \,a:blinkwait700-blinkoff400-blinkon250-Cursor
    \,sm:block-blinkwait175-blinkoff150-blinkon175
set nohlsearch
set nowrap
set noswapfile
set incsearch
set scrolloff=8
autocmd VimEnter * set scl=yes | wincmd p
set colorcolumn=120
set smartindent
set hidden

set clipboard+=unnamedplus

" leader
let mapleader = " "

" Enables cursor line position tracking:
set cursorline
highlight clear CursorLine
highlight CursorLineNR ctermbg=red    

" Autocompletion
set wildmode=longest,list,full

" Message Space
set cmdheight=2

"longer update time
set updatetime=50

" XPass messages to |ins-completion-menu|
set shortmess+=c

" Fix Splitting
set splitbelow splitright

"telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" vim Test
let test#neovim#term_position = "topleft"
let test#neovim#term_position = "vert"
let test#neovim#term_position = "vert botright 30"


"coc
"C:\Users\mcgfa\scoop\apps\nodejs\18.10.0\npm.cmd"
let g:coc_npm_path = 'usr\\lib\\node-modules\\npm\\bin\\npm.cmd'
hi Pmenu guibg=Gray guifg=Blue
source $HOME/.config/nvim/plug-config/coc.vim


"NerdTree File Explorer
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"RunPy
imap <F5> <Esc>:w<CR>:!clear;python %<CR>

"sql
let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \ }

"VimTest
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-a> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

let g:test#strategy = "neovim"
let g:test#python#runner = 'nose'
let g:test#python#pytest#file_pattern = 'test_'
let g:test#neovim#start_normal = 1

"Screen
nmap ss :split<Return> <C-w>w
nmap sv :vsplit<Return> <C-w>w

"Swaps
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<left> <C-w>k
map s<left> <C-w>j
map s<left> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

"Javacomplete
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Behave
nnoremap Y y$

" centered search
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z
nnoremap <C-j> :cnext<CR>zzzv

" undo break points
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap ! !<C-g>u
inoremap ? ?<C-g>u

" Jumplist Mutations
nnoremap <expr> k (v:count > 5 ? "m'" .v:count :"") . 'k' 
nnoremap <expr> j (v:count > 5 ? "m'" .v:count :"") . 'j' 

" move text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" shoutout
cnoreabbrev so source
cnoreabbrev marp MarkdownPreview

" undotree
nnoremap <leader>u :UndotreeShow<CR>

" cursor movement
nnoremap <leader>ll $
nnoremap <leader>hh 0


