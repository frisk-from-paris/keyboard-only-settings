" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

" My settings here.
set number
set relativenumber
set ruler
set visualbell
set laststatus=2
set clipboard=unnamedplus
set clipboard=unnamed
set paste

" display settings
syntax on
set foldcolumn=2
set foldmethod=indent
set foldenable
set foldlevelstart=99

" Navigation shortcuts
map gn :bnext
map gp :bprevious
map bd :bdelete

set undofile
set nobackup
set nowritebackup
set noswapfile

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif
