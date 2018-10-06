syntax enable
set t_Co=256
:colorscheme night-owl 
set filetype=on
filetype indent on
filetype plugin on
set clipboard=unnamed " use os clipboard
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tab to spaces
set number " show line numbers
set cursorline  " highlight current line
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches
set noswapfile

augroup configgroup
  autocmd!
  autocmd VimEnter * highlight clear SignColumn
  autocmd BufWritePre *.js,*.css,*.md,*.py %s/\s\+$//e

  " HTML
  autocmd FileType html set sw=2
  autocmd FileType html set ts=2
  autocmd FileType html set sts=2
  autocmd FileType html set textwidth=0

  " CSS
  autocmd FileType css set sw=2
  autocmd FileType css set ts=2
  autocmd FileType css set sts=2
  autocmd FileType css set textwidth=80

  " JavaScript
  autocmd FileType javascript set sw=2
  autocmd FileType javascript set ts=2
  autocmd FileType javascript set sts=2
  autocmd FileType javascript set textwidth=80

  " Python
  autocmd FileType python set sw=4
  autocmd FileType python set ts=4
  autocmd FileType python set sts=4
  autocmd FileType python set textwidth=80
  autocmd FileType python setlocal commentstring=#\ %s
augroup END

execute pathogen#infect()
map <C-n> :NERDTreeToggle<CR>
let g:airline_powerline_fonts = 1
