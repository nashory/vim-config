" ---------------------------------------------------
" VIM CONFIGURATION
"
" ~/.vimrc
" last updated: 24 May 2022 by craigstarr
" tested with vim-8.2
" plugin manager: Vundle
" ---------------------------------------------------

set nocompatible			  " be iMproved, required
filetype off				  " required


"install plugins with Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Plugin 'ycm-core/YouCompleteMe'
Plugin 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }			" nedtree
Plugin 'preservim/nerdcommenter'									" auto comment (, + c + <space>)
Plugin 'vim-airline/vim-airline'									" airline
Plugin 'chrisbra/csv.vim'											" nice csv visualization
Plugin 'toupeira/vim-desertink'										" color scheme
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'					" find file (ctrl + p)
Plugin 'easymotion/vim-easymotion'									" easymotion
Plugin 'https://github.com/leafgarland/typescript-vim.git'			" typescript
Plugin 'https://github.com/posva/vim-vue'							" Vuejs
Plugin 'bfrg/vim-cpp-modern'                                        " Modern C++ syntax highlight
"Plugin 'https://github.com/tmhedberg/SimpylFold'					" simplefold
call vundle#end()
filetype plugin indent on
"end


"environment setting
set backspace=indent,eol,start
set modifiable									"set modifiable
set nu											"show line numbers on the screen
set ai											"trun on auto identataion
au Bufenter *.\(c\|cpp\|h\|py\|lua\) set et		"convert tab to space
set hls											"highlight search word
set autoindent									"auto indent
set cindent										"auto indent
set smartindent									"auto indent
set encoding=utf-8								"Text encoding
set scrolloff=5									"number of lines visible above or below the cursor.
set showmatch									"Highlinght the correspondant bracket.
set mouse=a
set expandtab
set tabstop=4									"set tab stops to 4
set shiftwidth=4								"tab space when auto indent.
set softtabstop=4
"end


"ctrlp
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
	\ 'file': '\v\.(exe|so|dll)$'
	\ }
"end


" automatically set paste as true inside tmux.
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
" end


" for html/ruby/javascript/typescript files, 2 spaces
filetype plugin indent on		" enable file type detection 
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype typecript setlocal ts=2 sw=2 expandtab
"end


"color setting
syntax enable

if has('gui_running')
	set background=dark
else
	set background=dark
endif

:set t_Co=256

:colorscheme desertink		  	"color-scheme: desertink/jellybeans/codeschool/guardian/molokai

if has("syntax")				"highlight syntax
	syntax on
endif
"end

"key mapping
nmap <C-o> <C-w>v
nmap <C-i> <C-w>n
nmap <C-u> <C-w>c
"end

" NERDTree
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
" au VimEnter *  NERDTree			 " open NERDTree by dafault.
" end


" NERDCommenter
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
"end


"vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
set laststatus=2 " turn on bottom bar
"end


"for vim-simplefold
"let g:SimpylFold_docstring_preview=0
"end
