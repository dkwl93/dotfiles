" ========== VIMWiki stuff ==========
map <leader>c :Calendar <CR>
let g:vimwiki_list = [{'path': $HOME.'/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]

" ========== vim-rooter ==========
let g:rooter_patterns = ['.git/', 'package.json'] " How to find project root
let g:rooter_resolve_links = 1 " Resolve symlinks
 
" ========== Nerdtree Settings ==========
autocmd VimEnter * NERDTree
let g:ctrlp_dont_split = 'nerdtree'
let NERDTreeShowHidden=1

" CtrlP working path
let g:ctrlp_working_path_mode = 'ra'
"
" Vim Close Tag Settings
let g:closetag_filenames= "*.html,*.xhtml,*.jsx,*.js,*.ts,*.tsx"

" vim-javascript
let g:javascript_plugin_flow = 1

" NerdCommenter settings
let g:NerdSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" EasyMotion
let g:EasyMotion_smartcase = 1

" JSX
let g:jsx_ext_required = 0
 
" Grep Search
if executable('ag')
  let g:ackprg = 'ag --nogroup --column'

  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

autocmd QuickFixCmdPost *grep* cwindow

" ========== COC ============
" if hidden is not set, TextEdit might fail.
set hidden

" Some server have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

autocmd CursorHold * silent call CocActionAsync('highlight')

highlight link CocErrorSign GruvboxRed

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" =========== AIRLINE ===========
" Coc Integration with Airline
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

" =========== UltiSnips ===========
" Use python 3 for ultisnips
let g:UltiSnipsUsePythonVersion = 3

" Define directory for private snippets
let g:UltiSnipsSnippetsDir = '~/.config/nvim/ultisnips/'
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/ultisnips']
let g:UltiSnipsEditSplit="context"
