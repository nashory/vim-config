" THIS VIM SETTING IS ORGANIZED BY M.C.SHIN.
" MOST RECENT MODIFICATION : 2017.09.12 

" VIM plugins (https://github.com/junegunn/vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'https://github.com/wesleyche/SrcExpl.git'
Plug 'https://github.com/vim-scripts/AutoComplPop.git'
Plug 'https://github.com/vim-scripts/taglist.vim.git'
Plug 'https://github.com/bling/vim-airline'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'scrooloose/syntastic'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/toupeira/vim-desertink.git'			" color scheme
Plug 'https://github.com/leafgarland/typescript-vim.git'		" typescript
Plug 'https://github.com/tomtom/tlib_vim.git'					" snipMate
Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'		" snipMate
Plug 'https://github.com/garbas/vim-snipmate.git'				" snipMate
call plug#end()




" env setting
set modifiable   " set modifiable
set nu 		"sho lilne numbers on the screen
set ai		"trun on auto identataion
set ts=4	"set tab stops to 4
au Bufenter *.\(c\|cpp\|h\|py\|lua\) set et		" convert tab to space
set hls		"highlight search word
set autoindent	"Auto Indent
set cindent		"Auto Indent
set shiftwidth=2	"tab space when auto indent.
set scrolloff=5		"number of lines visible above or below the cursor.
set showmatch 		"Highlinght the correspondant bracket.
set mouse=a
set paste			"Prevent stair phonomenon when coy & paste

let g:ctrlp_custom_ignore = {
	\ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
	\ 'file': '\v\.(exe|so|dll)$'
	\ }



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
nmap <C-o> <C-w>v
nmap <C-i> <C-w>n
nmap <C-u> <C-w>c

" NERDTree setting.
let mapleader=","
nnoremap <Leader>rc :rightbelow vnew $MYVIMRC<CR>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nnoremap <C-f> :NERDTreeFind<CR>
nmap <Leader>n : NERDTreeToggle<CR>

" Taglist setting.
nmap <F8> :Tlist<CR>
