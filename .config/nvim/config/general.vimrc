syntax on " Syntax highlighting in vim

" Explicitly set filetyle=javascript fo fix jsx syntax highlighting
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx

" Explicitly set filetype=typescript for .ts .tsx
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
autocmd BufNewFile,BufRead *.tsx setlocal filetype=typescript

" SKIN
syntax enable
colorscheme space_vim_theme
hi Comment cterm=italic
set termguicolors

"Tabs to spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Line numbers
set nu

" Showmatch
set showmatch

" Ignore node_modules
set wildignore+=*/node_modules/*

" Yank to clipboard
set clipboard+=unnamed

" Font Size
set gfn=Menlo:h16

" Turn off that darn highlighting when searching
set nohlsearch

" Scrolling within iterm
set mouse=nicr

" Make the code below split right
set splitright

" Ctrl + T to open terminal
function! OpenTerminal()
  " move to right most buffer
  execute "normal 5\<C-l>"
  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")
  if bufType == "terminal"
    " close existing terminal
    execute "q"
  else
    " open terminal
    execute "vsp term://zsh"
    " turn off numbers
    execute "setlocal nonu"
    execute "setlocal nornu"
    execute "setlocal noshowmode"
    execute "setlocal noruler"
    " execute "setlocal laststatus=0"
    execute "setlocal noshowcmd"
    " toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!
    " set maps inside terminal buffer
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    startinsert!
  endif
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>
