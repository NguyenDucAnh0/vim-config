syntax on
"PLUGINS
call plug#begin('~/.config/nvim/autoload/plugged')
"indent & indent line
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'

"emmet (ex. html:5)
Plug 'mattn/emmet-vim'

"nerd tree
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"undo tree
Plug 'mbbill/undotree'

"color scheme
Plug 'sainnhe/gruvbox-material'

"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"devicons
Plug 'ryanoasis/vim-devicons'

"auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"file finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

"auto format
Plug 'prettier/vim-prettier'

"TypeScript + JSX support
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

"stuff (idk what it does)
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main'  }
Plug 'jparise/vim-graphql'

"Git Commands
Plug 'tpope/vim-fugitive'
call plug#end()



"SET STUFF
set updatetime=50
set noerrorbells
set incsearch
set nohlsearch
set hls
set is
set cb=unnamed
set ts=4
set sw=4
set si
set nu
set nu rnu
set noswapfile
set smartcase
set nohlsearch
"tab stuff
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
"indent
set smartindent 
set autoindent
set ruler
"setup backup dir
set nobackup

"stuff
set cursorline
autocmd FileType cpp nnoremap <F4> :!g++ -g --std=c++14 % -o %:r<CR>
autocmd FileType cpp nnoremap <F5> :!./%:r<CR>


"set encoding
set encoding=UTF-8

"SYMBOLS
" air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"indent line
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"disable autoindent
let g:polyglot_disabled = ['autoindent']

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

highlight Comment cterm=italic gui=italic


"colorscheme
let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'
colorscheme gruvbox-material

"COC
" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
"Mapping Keys
let mapleader = ' '

"Split
nnoremap <leader>sv :wincmd v<CR>
nnoremap <leader>sh :wincmd s<CR>

"Split Navigation
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>

"FZF remap
nnoremap <leader>p :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

"nerd tree
map <leader>n :NERDTreeToggle<CR>

"undo tree 
map <leader>u :UndotreeToggle <CR>

"Fugitive (git)
nmap <leader>gs :G<CR>
