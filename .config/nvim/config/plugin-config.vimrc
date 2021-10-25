" ========== VIMWiki stuff ==========
map <leader>c :Calendar <CR>
let g:vimwiki_list = [{'path': $HOME.'/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]

" ========== vim-rooter ==========
let g:rooter_patterns = ['.git/', 'package.json'] " How to find project root
let g:rooter_resolve_links = 1 " Resolve symlinks

" ========== FZF ==========
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
"
" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0) 

" ========== Nerdtree Settings ==========
autocmd VimEnter * NERDTree
let NERDTreeShowHidden=1

" Vim Close Tag Settings
let g:closetag_filenames= "*.html,*.xhtml,*.jsx,*.js,*.ts,*.tsx"
let g:closetag_regions =  {
\ 'typescript.tsx': 'jsxRegion,tsxRegion',
\ 'javascript.jsx': 'jsxRegion',
\ }

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

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

autocmd CursorHold * silent call CocActionAsync('highlight')

highlight link CocErrorSign GruvboxRed

" Set Node path for CoC to install
let g:coc_node_path = trim(system('which node'))

" Install these if not already installed
let g:coc_global_extensions = [
  \'coc-tsserver',
  \'coc-snippets',
  \'coc-yaml',
  \'coc-json',
  \'coc-eslint',
  \'coc-prettier',
  \'coc-yank',
  \]

" Use K to show documentation in preview window
nnoremap <silent> <leader>d :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

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
