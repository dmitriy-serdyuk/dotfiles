""""""""""""""""""""""""""""""""""""""""""""""""
""""""""  VUNDLE  """"""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitiv'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'endwise.vim'
Plugin 'surround.vim'
Plugin 'git://github.com/scrooloose/nerdtree'
Plugin 'git://github.com/scrooloose/nerdcommenter'
"Plugin 'git://github.com/vim-ruby/vim-ruby'
"Plugin 'git://github.com/Twinside/vim-syntax-haskell-cabal'
"Plugin 'git://github.com/lukerandall/haskellmode-vim'
Plugin 'dmitriy-serdyuk/vim-colors-solarized'
"Plugin 'git://github.com/tomasr/molokai'
Plugin 'git://github.com/MarcWeber/vim-addon-mw-utils'
"Plugin 'git://github.com/tomtom/tlib_vim'
"UnPlugin 'honza/snipmate-snippets'
Plugin 'git://github.com/honza/vim-snippets'
Plugin 'git://github.com/garbas/vim-snipmate'
Plugin 'git://github.com/Raimondi/delimitMate'
Plugin 'vimwiki'
"Plugin 'Rip-Rip/clang_complete'
Plugin 'git://github.com/rbgrouleff/bclose.vim'
Plugin 'git://github.com/fholgado/minibufexpl.vim'
"Plugin 'summerfruit256.vim'
Plugin 'git://github.com/dmitriy-serdyuk/summerfruit256.vim'
"Plugin 'kongo2003/fsharp-vim'
Plugin 'git://git.code.sf.net/p/vim-latex/vim-latex'
Plugin 'pyte'
"Plugin 'git://github.com/JuliaLang/julia-vim'

call vundle#end()            " required
filetype plugin indent on    " required

set nocompatible
filetype off 
""""""""""""""""""""""""""""""""""""""""""""""""
""""""""  ENDVUNDLE  """""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""
""""""""  GENERAL    """""""""""""""""""""""""""
set tabstop=4 
set shiftwidth=4 
set softtabstop=4
set expandtab
set smartindent
set number

inoremap {<CR> {<CR>}<Esc>O

set cin
set showmatch
set hlsearch
set incsearch

"colorscheme mytheme

set background=light
"colorscheme summerfruit256
"colorscheme solarized
"colorscheme pyte

set history=500

nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>

nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>

""""""""""""""""""""""""""""""""""""""""""""""""
" Russian simbols {{{
"============================================
  map ё `
  map й q
  map ц w
  map у e
  map к r
  map е t
  map н y
  map г u
  map ш i
  map щ o
  map з p
  map х [
  map ъ ]
  map ф a
  map ы s
  map в d
  map а f
  map п g
  map р h
  map о j
  map л k
  map д l
  map ж ;
  map э '
  map я z
  map ч x
  map с c
  map м v
  map и b
  map т n
  map ь m
  map б ,
  map ю .
  map Ё ~
  map Й Q
  map Ц W
  map У E
  map К R
  map Е T
  map Н Y
  map Г U
  map Ш I
  map Щ O
  map З P
  map Х {
  map Ъ }
  map Ф A
  map Ы S
  map В D
  map А F
  map П G
  map Р H
  map О J
  map Л K
  map Д L
  map Ж :
  map Э "
  map Я Z
  map Ч X
  map С C
  map М V
  map И B
  map Т N
  map Ь M
  map Б <
  map Ю >
" }}}


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""" ENCODING """""""""""""""""""""""""""""""""""
set wildmode=longest,list
set wcm=<Tab>
menu Encoding.koi8-r :e ++enc=8bit-koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=8bit-cp1251<CR>
menu Encoding.ibm-866 :e ++enc=8bit-ibm866<CR>
menu Encoding.utf-8 :e ++enc=2byte-utf-8 <CR>
menu Encoding.ucs-2le :e ++enc=ucs-2le<CR>
map <F8> :emenu Encoding.<TAB>

menu FEnc.cp1251    :set fenc=cp1251<CR>
menu FEnc.koi8-r    :set fenc=koi8-r<CR>
menu FEnc.cp866     :set fenc=ibm866<CR>
menu FEnc.utf-8     :set fenc=utf-8<CR>
menu FEnc.ucs-2le   :set fenc=ucs-2le<CR>
map  <S-F8> :emenu FEnc.<TAB>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set pastetoggle=<Ins>

vmap < <gv
vmap > >gv


"clang
let g:clang_complete_auto = 0
let g:clang_complete_copen = 1
""set completeopt = "menu,menuone,longest"
set pumheight=15
let g:SuperTabDefaultCompletionType = "context"

noremap <silent> <F11> :NERDTreeToggle<CR> 


function NextBuf()
"    if &readonly
"        w!
"    endif
    silent bn
endfunction

function PrevBuf()
"    if &readonly
"        w!
"    endif
    silent bp
endfunction

nmap <C-PageUp> <Esc>:call PrevBuf()<CR>
imap <C-PageUp> <Esc>:call PrevBuf()<CR>
vmap <C-PageUp> <Esc>:call PrevBuf()<CR>

nmap <C-PageDown> <Esc>:call NextBuf()<CR>
imap <C-PageDown> <Esc>:call NextBuf()<CR>
vmap <C-PageDown> <Esc>:call NextBuf()<CR>


set wildignore=*.bak,*.o,*.e,*~ " wildmenu: ignore these extensions

    function MyTabLine()
        let tabline = ''

            for i in range(tabpagenr('$'))
                if i + 1 == tabpagenr()
                    let tabline .= '%#TabLineSel#'
                else
                    let tabline .= '%#TabLine#'
                endif

                let tabline .= '%' . (i + 1) . 'T'

                let tabline .= ' %{MyTabLabel(' . (i + 1) . ')} |'
            endfor
        if tabpagenr('$') > 1
            let tabline .= '%=%#TabLine#%999XX'
        endif

        return tabline
    endfunction

    function MyTabLabel(n)
        let label = ''
        let buflist = tabpagebuflist(a:n)

            let label = substitute(bufname(buflist[tabpagewinnr(a:n) - 1]), '.*/', '', '')

            if label == ''
                let label = '[No Name]'
            endif

            let label .= ' (' . a:n . ')'
            for i in range(len(buflist))
                if getbufvar(buflist[i], "&modified")
                    let label = '[+] ' . label
                    break
                endif
            endfor
        " <--

        return label
    endfunction

    function MyGuiTabLabel()
        return '%{MyTabLabel(' . tabpagenr() . ')}'
    endfunction

    set tabline=%!MyTabLine()
    set guitablabel=%!MyGuiTabLabel()
"
"
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"
