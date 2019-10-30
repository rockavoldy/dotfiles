" Vundle "
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Load Vundle "
Plugin 'VundleVim/Vundle.vim'

" Plugins "
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'othree/yajs.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'posva/vim-vue'
Plugin 'alvan/vim-closetag'
Plugin 'itchyny/lightline.vim'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'neoclide/coc.nvim'
Plugin 'junegunn/fzf.vim'

call vundle#end()

filetype plugin indent on

" --- start deoplete --- "
let g:deoplete#enable_at_startup = 1

" nerdtree "
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 1

" syntastic "
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END
let g:javascript_plugin_jsdoc = 1

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" --- closetag --- "
let g:closetag_filenames = '*.html,*.xhtml,*.vue'
let g:closetag_filetypes = 'html,xhtml,vue'
let g:closetag_emptyTags_caseSensitive = 1

let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" --- theme lightline --- "
let g:lightline = {
\   'colorscheme': 'palenight',
\   'active': {
\     'left': [ [ 'mode', 'paste' ],
\               [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
\   },
\   'component_function': {
\     'gitbranch': 'fugitive#head'
\   }
\ }

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

" --- tabs --- "
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" General Settings "
set backspace=indent,eol,start
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set ruler
set number
set showcmd
set incsearch
set hlsearch
set noshowmode
set background=dark
colorscheme palenight

syntax on
