" Install plugins into "plugged" folder
call plug#begin('~/.vim/plugged')
" Appearance
Plug 'liuchengxu/space-vim-theme' "Theme
Plug 'scrooloose/nerdtree' " File Tree
Plug '/usr/local/opt/fzf' " Fuzzy finder
Plug 'junegunn/fzf.vim' " Fuzzy finder plugin for vim
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
Plug 'pangloss/vim-javascript' "VimJS  - for folding
Plug 'airblade/vim-rooter' " Change working directory
Plug 'mileszs/ack.vim' " Search
Plug 'editorconfig/editorconfig-vim' " To read .editorconfig
Plug 'lilydjwg/colorizer' " Color hex

" Snippets and shortcuts
Plug 'SirVer/ultisnips' " Used for snippet libraries
" Language Stuff
Plug 'leafgarland/typescript-vim' " Typescript syntax highlighting

" COC extensions
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'neoclide/coc-snippets', { 'do': { -> 'yarn install --frozen-lockfile' } }
Plug 'neoclide/coc-yaml', { 'do': { -> 'yarn install --frozen-lockfile' } }
Plug 'neoclide/coc-tsserver', { 'do': { -> 'yarn install --frozen-lockfile' } }
Plug 'neoclide/coc-json', { 'do': { -> 'yarn install --frozen-lockfile' } }
Plug 'neoclide/coc-tslint-plugin', { 'do': { -> 'yarn install --frozen-lockfile' } }
Plug 'neoclide/coc-eslint', { 'do': { -> 'yarn install --frozen-lockfile' } }

" COC extensions installed via :CocInstall plugin_name
" coc-prettier

call plug#end()
