if has("win32")
    set nocompatible
    source $VIMRUNTIME/vimrc_example.vim
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

call pathogen#infect()
syntax on
filetype plugin indent on

set nu
set tabstop=4
set hlsearch
set incsearch
set shiftwidth=4
set autoindent
set expandtab
set mouse=a
set writebackup

syntax enable
set background=dark
colorscheme solarized

" tags settting
" set tags=tags;
" set autochdir

let NERDTreeChristmasTree=1
let NERDTreeMouseMode=2
let NERDTreeHighlightCursorline=0
let NERDCompactSexyComs=1
let NERDSpaceDelims=1

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end  " Auto Exit

map <F2> :silent! NERDTreeToggle<CR>

" TagbarToggle
map <F3> :silent! TagbarToggle<CR>

" FulCoverageFile
map <F4> :silent! FufCoverageFile<CR>

" CheckSync
map <F5> :CheckSyntax <CR>

" Cscope
map <F6> :! cscope -Rbq<CR>:cs reset<CR>

" NERDCommand
let mapleader=","

" Powerline
set laststatus=2
let g:Powerline_symbols = 'unicode'

" Supertab
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
set ofu=syntaxcomplete#Complete
set completeopt=menu,longest


" Cscope
if has("cscope")
    set cscopetag 
    set csto=1
    if filereadable("cscope.out")  
        cs add cscope.out
    endif

    set cscopeverbose
    nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>      
    nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>      
    nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>      
    nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>     
    nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>     
    nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>     
    nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>   
    nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>     
endif

" 配色方案
if has("gui_running")
    colo solarized
else
    colo desert
endif

"--------------------------------------------------
" Name: solarized
" Git: https://github.com/altercation/vim-colors-solarized.git
"--------------------------------------------------
let g:solarized_termcolors=256
let g:solarized_termtrans=0
let g:solarized_contrast="normal"
let g:solarized_visibility="high"
let g:solarized_underline=1
let g:solarized_italic=0
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_diffmode="normal"
let g:solarized_hitrail=0
let g:solarized_menu=1

