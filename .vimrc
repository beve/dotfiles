" Notes pour YouCompleteMe
" Installer ctags, cmake, boost, clang, the_silver_searcher, hg
" Installer les plugins en lancant vim puis :PluginInstall
" cd ~/.vim/bundle/YouCompleteMe && ./install.sh --clang-completer --system-libclang --system-boost
" Pour Go: :GoInstallBinaries
" Pour vimproc: cd  ~/.vim/bundle/vimproc.vim && /usr/bin/make -f make_unix.mak
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()

" neobundle

" Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

" plugin Git
NeoBundle 'tpope/vim-fugitive'
" ctrlP
" NeoBundle 'kien/ctrlp.vim'
" ctrlP funky
" NeoBundle 'tacahiroy/ctrlp-funky'
" Airline
NeoBundle 'bling/vim-airline'
" YouCompleteMe
NeoBundle 'Valloric/YouCompleteMe'
" ListToggle
NeoBundle 'Valloric/ListToggle'
" delimitmate
NeoBundle 'Raimondi/delimitMate'
" NERDtree
NeoBundle 'scrooloose/nerdtree'
" Syntastic
NeoBundle 'scrooloose/syntastic'
" Tagbar
NeoBundle 'majutsushi/tagbar'
" Sessions
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-session'
" HTML
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
NeoBundle 'othree/html5.vim'
" SCSS
NeoBundle 'cakebaker/scss-syntax.vim'
" Syntax hightlight for javascript libs 
NeoBundle 'othree/javascript-libraries-syntax.vim'
" Angular
NeoBundle 'burnettk/vim-angular'
" Silver searcher
NeoBundle 'rking/ag.vim'
" vim-go
NeoBundle 'fatih/vim-go'
" undotree
NeoBundle 'mbbill/undotree'
" MatchTagAlways
NeoBundle 'valloric/MatchTagAlways'
" UltiSnitps
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
" Minimap
NeoBundle 'mipmip/vim-minimap'
" bclose
NeoBundle 'rbgrouleff/bclose.vim'
" gitgutter
NeoBundle 'airblade/vim-gitgutter'
" Nerdcommenter
NeoBundle 'scrooloose/nerdcommenter'
" TernJS
NeoBundle 'ternjs/tern_for_vim'
" Colorizer
NeoBundle 'vim-scripts/colorizer'
" Multiple cursors
" NeoBundle 'terryma/vim-multiple-cursors'
" Unite
NeoBundle 'Shougo/vimproc', { 'build' : { 'unix' : 'make -f make_unix.mak'}}
NeoBundle 'Shougo/unite.vim'
" NeoBundle 'Shougo/neomru.vim'
" SuperTab
NeoBundle 'ervandew/supertab'
" vim-autoformat
NeoBundle 'maksimr/vim-jsbeautify'
" easy-align
NeoBundle 'junegunn/vim-easy-align'
" vim-yankstack
NeoBundle 'maxbrunsfeld/vim-yankstack'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

" Vundle 
" Plugin 'gmarik/Vundle.vim'

" -----------------------------------------------
" vundle
" -----------------------------------------------
" call vundle#end()            " required

" -----------------------------------------------
" general
" -----------------------------------------------
inoremap jj <Esc>
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
set tabstop=4
set softtabstop=4
set shiftwidth=4
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
" Add ; at end of line
inoremap ;; <C-o>A;

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
let g:syntastic_javascript_checkers = ['jshint']

" -----------------------------------------------
" ctrlp
" -----------------------------------------------
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_max_height = 50
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_map = '<c-p>p'
"let g:ctrlp_working_path_mode = 'ra'
"nmap <c-p>b :CtrlPBuffer <cr>
"nmap <c-p>d :CtrlPDir <cr>
"nmap <c-p>m :CtrlPMRUFiles <cr>
"nmap <c-p>f :CtrlPFunky <cr>

" -----------------------------------------------
" ctrlp funky
" -----------------------------------------------
"nnoremap <Leader>fu :CtrlPFunky<Cr>
"" narrow the list down with a word under cursor
"nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

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
:let g:session_autoload = 'no'
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
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
" On desactive syntastic pour les fichiers go
let g:loaded_syntastic_go_go_checker = 1
let g:go_auto_type_info = 1
let g:go_doc_keywordprg_enabled = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_fmt_experimental = 0
let g:go_fmt_fail_silently = 0
let g:go_fmt_autosave = 1
let g:go_fmt_command = 'gofmt'
" autocmd FileType go setlocal shiftwidth=8 tabstop=8 softtabstop=8     " set tab stops to 8 for Go files
" autocmd FileType go setlocal noexpandtab                              " don't expand tabs to spaces for Go files

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

nmap <F5> :TagbarToggle<CR>

" -----------------------------------------------
" gitgutter
" -----------------------------------------------
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" -----------------------------------------------
" undotree
" -----------------------------------------------
nnoremap <F8> :UndotreeToggle<cr>

" -----------------------------------------------
" delimitmate
" -----------------------------------------------

let delimitMate_expand_cr=1

" -----------------------------------------------
" Unite
" -----------------------------------------------
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_prompt='» '
let g:unite_split_rule = 'botright'
call unite#custom#profile('default', 'context', {
			\ 'start_insert': 1,
			\'winheight': 10,
			\ 'direction': 'botright',
			\ })
" let g:unite_source_rec_async_command = ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']
let dot = '\%(^\|/\)\.'
let dirs = '\%(^\|/\)\%(' . join(['node_modules', 'bower_components', 'dist'], '\|') . '\)\%($\|/\)'
let files = join(['\.pyc\%($\)'], '\|')
let pattern = join([dot, dirs, files], '\|')
call unite#custom#source('file_rec/async', 'ignore_pattern', pattern)
call unite#custom#profile('default', 'context', {'start_insert': 1})
nnoremap <silent> <c-p>p :Unite -auto-resize -buffer-name=files_buffer buffer file_rec/async:!<cr>
nnoremap <silent> <c-p>v :Unite -auto-resize -default-action=vsplit -buffer-name=files_buffer buffer file_rec/async:!<cr>
nnoremap <silent> <c-p>b :Unite -auto-resize buffer<cr>
nnoremap <silent> <c-p>l :Unite line -no-split<cr>
nnoremap <silent> <c-p>g :Unite grep<cr>
nnoremap <silent> <c-p>u :Unite ultisnips<cr>
nnoremap <silent> <c-p>f :Unite function<cr>

" -----------------------------------------------
" UltiSnips
" -----------------------------------------------
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsExpandTrigger="<nop>"
let g:ulti_expand_or_jump_res = 0
function! <SID>ExpandSnippetOrReturn()
  let snippet = UltiSnips#ExpandSnippetOrJump()
  if g:ulti_expand_or_jump_res > 0
    return snippet
  else
    return "\<C-Y>"
  endif
endfunction
imap <expr> <CR> pumvisible() ? "<C-R>=<SID>ExpandSnippetOrReturn()<CR>" : "<Plug>delimitMateCR"

" -----------------------------------------------
" js-beautify 
" -----------------------------------------------
autocmd FileType javascript noremap <buffer><Enter><Enter> :call JsBeautify()<cr>
autocmd FileType json noremap <buffer><Enter><Enter> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <Enter><Enter> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <Enter><Enter> :call CSSBeautify()<cr>

" -----------------------------------------------
" SCSS
" -----------------------------------------------
au BufRead,BufNewFile *.scss set filetype=scss.css
au BufRead,BufNewFile *.less set filetype=scss.css
autocmd FileType scss set iskeyword+=-

" -----------------------------------------------
" Easy align
" -----------------------------------------------
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
