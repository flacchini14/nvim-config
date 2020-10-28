"dein Scripts-----------------------------
" Required:
filetype plugin indent on

if &compatible
  set nocompatible               " Be iMproved
endif
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
" Required:
set runtimepath+=/Users/fabio/.config/nvim/bundles/repos/github.com/Shougo/dein.vim 
" Required:
if dein#load_state('/Users/fabio/.config/nvim/bundles')
  call dein#begin('/Users/fabio/.config/nvim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/fabio/.config/nvim/bundles/repos/github.com/Shougo/dein.vim')

  " autocompletion
  " call dein#add('davidhalter/jedi-vim')

  " colorscheme
  call dein#add('lifepillar/vim-solarized8')

  " better syntax highlighting for python
  call dein#add('JazzCore/vim-python-syntax')

  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  " Git wrapper
  call dein#add('tpope/vim-fugitive')

  call dein#add('junegunn/fzf', { 'dir': '/usr/local/opt/fzf' })
  call dein#add('junegunn/fzf.vim')

  " Syntax Highlighter for .ts files
  call dein#add('leafgarland/typescript-vim')
  " Syntax Highlighter for tsx
  call dein#add('ianks/vim-tsx')

  " Another Syntax Highlighter for .ts files
  " call dein#add('HerringtonDarkholme/yats.vim')

  " syntax highlighting for javascript
  call dein#add('othree/yajs.vim')

  call dein#add('vim-scripts/dbext.vim')

  " syntax checking
  call dein#add('dense-analysis/ale')

  " autocompletion
  call dein#add('Shougo/deoplete.nvim')

  call dein#add('takac/vim-hardtime')

  " call dein#add('bouk/deoplete-markdown-links')

  call dein#add('plasticboy/vim-markdown')

  call dein#add('bogensberger/deoplete-markdown-links')

  call dein#add('preservim/nerdtree')

  if has('win32') || has('win64')
  call dein#add('tbodt/deoplete-tabnine', { 'build': 'powershell.exe .\install.ps1' })
  else
  call dein#add('tbodt/deoplete-tabnine', { 'build': './install.sh' })
  endif
  
  call dein#add('mhinz/vim-startify')






  " Required:
  call dein#end()
  call dein#save_state()
endif

set rtp+=/usr/local/opt/fzf

let g:vim_markdown_edit_url_in = 'vsplit'
let g:vim_markdown_follow_anchor = 1
set conceallevel=2

" If you want to install not installed plugins on startup.
" if dein#check_install()
"   call dein#install()
" endif

" Temporary to break wrong navigation habit
let g:hardtime_default_on = 0

syntax enable
set expandtab
set tabstop=4
set shiftwidth=4

autocmd FileType typescript setlocal ts=2 sw=2 expandtab
autocmd FileType typescriptreact setlocal ts=2 sw=2 expandtab
autocmd FileType typescript.tsx setlocal ts=2 sw=2 expandtab

let g:zettelkasten = "/Users/philipp/sandbox/studium/notes/"
command! -nargs=1 NewZettel :execute ":vsp" zettelkasten . strftime("%Y-%m-%d") . "-<args>.md"

"End dein Scripts-------------------------
"
" shortcuts
:let mapleader = ","

map <LEADER>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <LEADER>s :sp <C-R>=expand("%:p:h") . "/" <CR>
map <LEADER>v :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <LEADER>t :FZF <CR>
map <LEADER>f :Rg <CR>
map <LEADER>d :ALEGoToDefinitionInVSplit<CR>
map <LEADER>r :ALEFindReferences -relative<CR>
map <LEADER>z :NewZettel 

autocmd FileType markdown map <LEADER>d ge<CR>
autocmd FileType markdown map k gk
autocmd FileType markdown map j gj
autocmd FileType markdown setlocal linebreak


" no backup files
set nobackup
set noswapfile

set nofoldenable    " disable folding
set nu 				" line numbering
set clipboard+=unnamed " use system clipboard

let g:python3_host_prog = '/usr/local/bin/python3'

let python_highlight_all = 1 "better python syntax highlighting
"let g:jedi#popup_on_dot = 0
"let g:jedi#force_py_version = 3
let g:jedi#smart_auto_mappings = 0 " don't automatically add the import stmt
" Disable jedi autocompletion so deoplete can handle it
let g:jedi#completions_enabled = 0

" minimum setting
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('ignore_sources', {'typescript': ['around', 'buffer'], 'javascript': ['buffer', 'around'], 'markdown': ['around', 'buffer']})





" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" select first completion
set completeopt=noinsert


if has("nvim")
  set termguicolors
endif 

set background=light
colorscheme solarized8_flat
" alternative solarized8_dark


let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 'on_save'
let g:ale_list_window_size = 5
let g:ale_set_highlights = 0
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['eslint', 'prettier'],
\   'css': ['prettier'],
\}
let g:ale_linters = {
\   'typescript': ['eslint', 'tsserver'],
\   'tex': []
\}

let g:ale_lint_delay = 200
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_insert_leave = 0

let g:ale_completion_tsserver_autoimport = 1
call deoplete#custom#option('sources', {
\ 'typescript': ['ale'],
\})
autocmd FileType tex
       \ call deoplete#custom#buffer_option('auto_complete', v:false)

let g:dbext_default_buffer_lines = 20

let g:dbext_default_profile_crate = 'type=CRATE:host=localhost:port=4200'
let g:dbext_default_profile = 'crate'
