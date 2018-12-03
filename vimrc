" THIS VIM SETTING IS ORGANIZED BY M.C.SHIN.
" MOST RECENT MODIFICATION : 2017.09.12 

" VIM plugins (https://github.com/junegunn/vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'                                 " auto comment (, + c + <space>)
Plug 'scrooloose/syntastic'						                " syntastic (check syntax error)
Plug 'itchyny/calendar.vim'                                     " calendar
Plug 'chrisbra/csv.vim'                                         " csv
Plug 'plasticboy/vim-markdown'                                  " markdown
Plug 'pangloss/vim-simplefold'                                  " fold code
Plug 'https://github.com/wesleyche/SrcExpl.git'
Plug 'https://github.com/vim-scripts/AutoComplPop.git'
Plug 'https://github.com/vim-scripts/taglist.vim.git'
Plug 'https://github.com/bling/vim-airline'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'                " find file (ctrl + p)
Plug 'https://github.com/toupeira/vim-desertink.git'			" color scheme
Plug 'https://github.com/leafgarland/typescript-vim.git'		" typescript
Plug 'https://github.com/tomtom/tlib_vim.git'					" snipMate
Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'		" snipMate
Plug 'https://github.com/garbas/vim-snipmate.git'				" snipMate
Plug 'Lokaltog/vim-easymotion'                                  " move mouse curser at right position.
call plug#end()


" env setting
set modifiable   " set modifiable
set nu 		"sho lilne numbers on the screen
set ai		"trun on auto identataion
au Bufenter *.\(c\|cpp\|h\|py\|lua\) set et		" convert tab to space
set hls		"highlight search word
set autoindent	"Auto Indent
set cindent		"Auto Indent
set scrolloff=5		"number of lines visible above or below the cursor.
set showmatch 		"Highlinght the correspondant bracket.
set mouse=a
set paste			"Prevent stair phonomenon when coy & paste

let g:ctrlp_custom_ignore = {
	\ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
	\ 'file': '\v\.(exe|so|dll)$'
	\ }

" by default, the indent is 2 spaces.
set smartindent
set expandtab
set tabstop=4				  "set tab stops to 4
set shiftwidth=4			" tab space when auto indent.
set softtabstop=4

" for html/ruby/javascript/typescript files, 2 spaces
filetype plugin indent on       " enable file type detection 
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype typecript setlocal ts=2 sw=2 expandtab


syntax enable

if has('gui_running')
    set background=dark
else
    set background=dark
endif

:set t_Co=256

:colorscheme desertink		"desertink/jellybeans/codeschool/guardian/molokai


"Highlight systax.
if has("syntax")
	syntax on
endif

set autoindent

" VIM setting.
set encoding=utf-8
nmap <C-o> <C-w>v
nmap <C-i> <C-w>n
nmap <C-u> <C-w>c

" NERDTree setting.
let mapleader=","
let g:NERDTreeDirArrows=0
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeMinimalU = 1
let NERDTreeShowLineNumbers=1
let g:NERDTreeWinPos = "left"
nnoremap <Leader>rc :rightbelow vnew $MYVIMRC<CR>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nnoremap <C-f> :NERDTreeFind<CR>
nmap <Leader>n : NERDTreeToggle<CR>
" au VimEnter *  NERDTree			" open NERDTree by dafault.

" NERD Commenter setting.
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" customize keymapping
map <Leader>cc <plug>NERDComToggleComment
map <Leader>c<space> <plug>NERDComComment

" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
set laststatus=2 " turn on bottom bar

" for CALENDAR.VIM
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" for vim-simplefold
let g:SimpylFold_docstring_preview=1





" Taglist setting.
nmap <F8> :Tlist<CR>
