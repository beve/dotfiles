" Notes pour YouCompleteMe
" Installer ctags, cmake, boost, clang, the_silver_searcher, hg
" Installer les plugins en lancant vim puis :PluginInstall
" cd ~/.vim/bundle/YouCompleteMe && ./install.sh --clang-completer --system-libclang --system-boost
" Pour Go: :GoInstallBinaries
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle 
Plugin 'gmarik/Vundle.vim'
" plugin Git
Plugin 'tpope/vim-fugitive'
" ctrlP
Plugin 'kien/ctrlp.vim'
" ctrlP funky
Plugin 'tacahiroy/ctrlp-funky'
" Airline
Plugin 'bling/vim-airline'
" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
" ListToggle
Plugin 'Valloric/ListToggle'
" delimate
Plugin 'Raimondi/delimitMate'
" NERDtree
Plugin 'scrooloose/nerdtree'
" Syntastic
Plugin 'scrooloose/syntastic'
" Tagbar
Plugin 'majutsushi/tagbar'
" Sessions
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
" HTML format
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Syntax hightlight for javascript libs 
Plugin 'othree/javascript-libraries-syntax.vim'
" Angular
Plugin 'burnettk/vim-angular'
" Silver searcher
Plugin 'rking/ag.vim'
" vim-go
Plugin 'fatih/vim-go'
" undotree
Plugin 'mbbill/undotree'
" MatchTagAlways
Plugin 'valloric/MatchTagAlways'
" UltiSnitps
Plugin 'SirVer/ultisnips'

" -----------------------------------------------
" vundle
" -----------------------------------------------
call vundle#end()            " required

" -----------------------------------------------
" general
" -----------------------------------------------
filetype plugin indent on    " required
filetype plugin on
let g:netrw_liststyle=3
syntax on
set background=dark
let g:rehash256 = 1
let g:molokai_original = 0
set t_Co=256
colorscheme molokai
" hi Normal ctermbg=Black
hi Comment ctermbg=233 ctermfg=Blue
hi LineNr ctermbg=233 ctermfg=240
set omnifunc=syntaxcomplete#Complete
set number  
set numberwidth=5
set softtabstop=2
set shiftwidth=2
set noexpandtab
set mouse=a
set foldmethod=manual
set laststatus=2
set backspace=indent,eol,start
set showcmd
set encoding=utf-8
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters
set ttyfast 
set noswapfile
set undodir=~/.vim/.undodir/
set undofile
" Disable auto comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Disable tabline
set showtabline=0


" speed up syntax highlighting
" set nocursorcolumn
" set nocursorline
" syntax sync minlines=256
" autocmd BufEnter * :syntax sync fromstart
" set synmaxcol=128
set re=1
" Fermer automatiquement la fenetre d'omnicompletion
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" -----------------------------------------------
" Nerdtree
" -----------------------------------------------
nmap <c-n> :NERDTreeToggle <cr>
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize = 40
" Ouverture de Nerdtree au lancement de vim si aucun fichié n'est spécifié
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Fermeture de vim si nerdtree est la dernière fenetre
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" map <C-d> <C-[>diwi

" -----------------------------------------------
" vim airline
" -----------------------------------------------
let g:airline_powerline_fonts = 1

" -----------------------------------------------
" bufferline 
" -----------------------------------------------
let g:bufferline_echo = 0

" -----------------------------------------------
" syntastic
" -----------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" let b:syntastic_mode = 'passive'

" -----------------------------------------------
" ctrlp
" -----------------------------------------------
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_max_height = 50
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map = '<c-p>p'
let g:ctrlp_working_path_mode = 'ra'
nmap <c-p>b :CtrlPBuffer <cr>
nmap <c-p>d :CtrlPDir <cr>
nmap <c-p>m :CtrlPMRUFiles <cr>
nmap <c-p>f :CtrlPFunky <cr>

" -----------------------------------------------
" ctrlp funky
" -----------------------------------------------
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" ------------------------------------------------

" The Silver Searcher
" -----------------------------------------------
if executable('ag')
        set grepprg=ag\ --nogroup\ --nocolor
        let g:ctrlp_user_command = 'ag %s -l --nocolor -g  ""'
        let g:ctrlp_use_caching = 0
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
endif

" -----------------------------------------------
" session
" -----------------------------------------------
" let g:session_autoload = 'yes'
" let g:session_autosave = 'yes'

" -----------------------------------------------
" angular
" -----------------------------------------------
let g:used_javascript_libs = 'underscore,angularjs,angularui,jquery' "
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

" -----------------------------------------------
" YouCompleteMe
" -----------------------------------------------
let g:ycm_auto_trigger = 1

" -----------------------------------------------
" Go
" -----------------------------------------------
let g:go_disable_autoinstall = 0  
let g:go_fmt_fail_silently = 0
let g:go_fmt_autosave = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
" On desactive syntastic pour les fichiers go
let g:loaded_syntastic_go_go_checker = 1
let g:go_fmt_command = "gofmt"
let g:go_auto_type_info = 1
let g:go_fmt_experimental = 0
let g:go_doc_keywordprg_enabled = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1

" -----------------------------------------------
" Toogle
" -----------------------------------------------
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

" -----------------------------------------------
" Tagbar
" -----------------------------------------------
let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

nmap <F8> :TagbarToggle<CR>

" -----------------------------------------------
" undotree
" -----------------------------------------------
nnoremap <F5> :UndotreeToggle<cr>
