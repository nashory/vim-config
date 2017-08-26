
" THIS VIM SETTING IS ORGANIZED BY M.C.SHIN.
" MOST RECENT MODIFICATION WAS DONE IN 2015.10.16 


set nu 		"sho lilne numbers on the screen
set ai		"trun on auto identataion
set ts=4	"set tab stops to 4
set hls		"highlight search word
set autoindent	"Auto Indent
set cindent		"Auto Indent
set shiftwidth=4	"tab space when auto indent.
set scrolloff=5		"number of lines visible above or below the cursor.
set showmatch 		"Highlinght the correspondant bracket.
set mouse=a
set paste			"Prevent stair phonomenon when coy & paste



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
