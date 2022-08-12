" configuration resources:
" (https://medium.com/geekculture/neovim-configuration-for-beginners-b2116dbbde84)
" (https://dev.to/elvessousa/my-basic-neovim-setup-253l)

set nocompatible            " disable compatibility to old-time vi
set number
set relativenumber
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing set expandtab               " converts tabs to white space set shiftwidth=4            " width for autoindents set autoindent              " indent a new line the same amount as the line just typed set number                  " add line numbers set relativenumber
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
" syntax on                   " syntax highlighting
" set t_Co=256                " enable 256 colors in the terminal
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
" set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
set completeopt=noinsert,menuone,noselect " modifies the auto-complete menu to behave more like an IDE
set title " show the file title
set ttimeoutlen=0 " time in milliseconds to run commands
set wildmenu " show a more advanced menu for auto-completion suggestions
" add support for true italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" plugin list

call plug#begin('~/.config/nvim/plugged')

" Appearance
" Plug 'mhinz/vim-startify' " start screen
Plug 'vim-airline/vim-airline' " status bar
Plug 'vim-airline/vim-airline-themes' " status bar theme manager 
Plug 'ryanoasis/vim-devicons' " better icons
Plug 'sainnhe/everforest'


" Utilities
Plug 'sheerun/vim-polyglot'
Plug 'vim-python/python-syntax'
Plug 'HerringtonDarkholme/yats.vim' " typescript syntax highlighting
Plug 'othree/html5.vim'
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
" Plug 'matze/vim-move'

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"
" vim-airline-themes setup, wiki: (https://github.com/vim-airline/vim-airline/wiki/Screenshots)
let g:airline_theme='bubblegum'

" set syntax highlighting
let g:python_highlight_all=1
let g:yats_host_keyword=1
let g:vim_svelte_plugin_load_full_syntax=1

if has('termguicolors')
  set termguicolors
endif

" For dark version.
" set background=dark 
" set background=light 

" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'soft'

" For better performance
let g:everforest_better_performance = 1

colorscheme everforest

" transparent background
highlight Normal guibg=none
highlight NonText guibg=none
:hi EndOfBuffer guibg=NONE ctermbg=NONE

" format file on save
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" insert mode cursor style
set guicursor=n-v-c-i:block

" coc bindings
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <C-space> coc#refresh()
else
  inoremap <silent><expr> <C-@> coc#refresh()
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use Q to show documentation in preview window.
nnoremap <silent> Q :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('Q', 'in')
  endif
endfunction
