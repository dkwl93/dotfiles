" Install plugins into "plugged" folder
call plug#begin('~/.vim/plugged')
" Appearance
Plug 'morhetz/gruvbox' "Theme
Plug 'ctrlpvim/ctrlp.vim' " File Navigation
Plug 'scrooloose/nerdtree' " File Tree
Plug 'scrooloose/nerdcommenter' " Comment Tools
Plug 'bling/vim-airline' " Bottom Status Bar
Plug 'tpope/vim-fugitive' " Git Wrapper
Plug 'tpope/vim-surround' " Surround
Plug 'airblade/vim-gitgutter' " Diff in gutter
Plug 'jiangmiao/auto-pairs' " Auto Pair
Plug 'easymotion/vim-easymotion' " Easymotion
Plug 'mxw/vim-jsx' " VIM-JSX
Plug 'alvan/vim-closetag' " Vim closetag
Plug 'vimwiki/vimwiki' " Vim wiki
Plug 'mattn/calendar-vim' " Calendar for vimwiki
Plug 'prettier/vim-prettier' "Prettier
Plug 'pangloss/vim-javascript' "VimJS  - for folding
Plug 'airblade/vim-rooter' " Change working directory

" Snippets and shortcuts
Plug 'SirVer/ultisnips' " Used for snippet libraries
" Language Stuff
Plug 'leafgarland/typescript-vim' " Typescript syntax highlighting

" COC extensions
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'neoclide/coc-snippets', { 'do': { -> 'yarn install --frozen-lockfile' } }
Plug 'neoclide/coc-yaml', { 'do': { -> 'yarn install --frozen-lockfile' } }
Plug 'neoclide/coc-tsserver', { 'do': { -> 'yarn install --frozen-lockfile' } }
Plug 'neoclide/coc-prettier', { 'do': { -> 'yarn install --frozen-lockfile' } }
Plug 'neoclide/coc-json', { 'do': { -> 'yarn install --frozen-lockfile' } }
Plug 'neoclide/coc-tslint-plugin', { 'do': { -> 'yarn install --frozen-lockfile' } }

call plug#end()
