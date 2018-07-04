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
Plugin 'mxw/vim-jsx'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'mtth/scratch.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'mustache/vim-mustache-handlebars'
"Plugin 'nyanhan/requirejs.vim'
"Plugin 'tpope/vim-surround'
"Plugin 'Townk/vim-autoclose'

call vundle#end()
filetype plugin indent on

nmap <silent> <leader>f :FufFile **/<CR>
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
set listchars=tab:>.,trail:_,extends:#,nbsp:_


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

function! GrayScale()
    if g:colors_name == "paperA5"
        colorscheme blackboard 
    else
        colorscheme paperA5 
    endif
endfunction

command! Gray call GrayScale()

" filetype on

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" undo my n00bieness
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>


let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'
let g:tern_request_timeout=3
let g:tern_show_signature_in_pum=1

" first, enable status line always
set laststatus=2
"
" " now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=0 ctermbg=110 
  au InsertLeave * hi StatusLine ctermfg=15 ctermbg=8
endif

set foldmethod=indent "syntax
set foldnestmax=2
set foldlevel=1
"set foldcolumn=4
"set nofoldenable


"nnoremap <c-j> <c-w>j
"nnoremap <c-k> <c-w>k
"nnoremap <c-h> <c-w>h
"nnoremap <c-l> <c-w>l

set exrc
set secure

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_javascript_eslint_exec = '~/projects/LGI/onemw/onemw-js/node_modules/eslint/bin/eslint.js'


let g:syntastic_javascript_checkers = ['eslint']
let g:syhtastic_html_checkers = ['tidy']

let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_default_mapping = 0


nmap <silent> <leader>d :JsDoc<CR>

"osx term map
nmap <Esc>[1;5A <C-Up>
nmap <Esc>[1;5B <C-Down>
nmap <Esc>[1;5C <C-Right>
nmap <Esc>[1;5D <C-Left>

"tmux term map
nmap <Esc>[A <C-Up>
nmap <Esc>[B <C-Down>
nmap <Esc>[C <C-Right>
nmap <Esc>[D <C-Left>

nmap <C-Up> :res +15<CR>
nmap <C-Down> :res -15<CR>
nmap <C-Right> :vertical resize +25<CR>
nmap <C-Left> :vertical resize -25<CR>



"FuzzyFinder should ignore all files in .gitignore
"let ignorefile = ".gitignore"
"let ignore = '\v\~$'
"if filereadable(ignorefile)
    "for line in readfile(ignorefile)
        "let line = substitute(line, '\.', '\\.', 'g')
        "let line = substitute(line, '\*', '.*', 'g')
        "let ignore .= '|^' . line
    "endfor
"endif
"let g:fuf_file_exclude = ignore

