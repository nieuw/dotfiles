set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'pangloss/vim-javascript'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on

nmap <silent> <leader>f :FufFile **/<CR>
nmap <silent> <leader>E :FufFile<CR>
nmap <silent> <leader>b :FufBuffer<CR>

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden
set nobackup
set noswapfile

set ruler
set number
set title
set cursorline

set tabstop=4
set shiftwidth=4
set shiftround
set autoindent
set copyindent
set smarttab
set expandtab

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.


set showmatch
set incsearch


syntax enable
" operators styled
"syntax match _Operator display "[\/*=+~<>&|?:!\-]"
"syntax region _Comment start="\/\*" end="\*\/"
"syntax match _Comment "\/\/.*$"
"hi link _Operator Operator
"hi link _Comment Comment

colorscheme blackboard
" filetype on
au BufNewFile,BufRead *.jsm set filetype=javascript

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" undo my n00bieness
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

let g:fuf_file_exclude = '\v^build|^src-cov|^archive|^node_'

nmap <C-]> :TernDef<CR>
imap <C-]> <Esc>:TernDef<CR>
nmap <silent> <leader>rn :TernRename<CR>

" first, enable status line always
set laststatus=2
"
" " now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=0 ctermbg=110 
  au InsertLeave * hi StatusLine ctermfg=15 ctermbg=245
endif

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1


nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

set exrc
set secure
