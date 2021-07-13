" download vim-plug if we don't have it
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  echo "Downloading vim-plug..."
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | q | source ~/.config/nvim/init.vim
endif

" Install plugins into "plugged" folder
call plug#begin('~/.config/nvim/plugged')
" Appearance
Plug 'liuchengxu/space-vim-theme' "Theme
Plug 'scrooloose/nerdtree' " File Tree
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Base FZF
Plug 'junegunn/fzf.vim' " Fuzzy finder plugin for vim
Plug 'scrooloose/nerdcommenter' " Comment Tools
Plug 'vim-airline/vim-airline' " Bottom Status Bar
Plug 'tpope/vim-fugitive' " Git Wrapper
Plug 'tpope/vim-surround' " Surround
Plug 'airblade/vim-gitgutter' " Diff in gutter
Plug 'jiangmiao/auto-pairs' " Auto Pair
Plug 'easymotion/vim-easymotion' " Easymotion
Plug 'alvan/vim-closetag' " Vim closetag
Plug 'vimwiki/vimwiki' " Vim wiki
Plug 'mattn/calendar-vim' " Calendar for vimwiki
Plug 'pangloss/vim-javascript' "VimJS  - for folding
Plug 'airblade/vim-rooter' " Change working directory
Plug 'editorconfig/editorconfig-vim' " To read .editorconfig
Plug 'lilydjwg/colorizer' " Color hex

" Snippets and shortcuts
Plug 'SirVer/ultisnips' " Used for snippet libraries

" Language Stuff
Plug 'leafgarland/typescript-vim' " Typescript syntax highlighting
Plug 'maxmellon/vim-jsx-pretty' " JSX Syntax Highlighting
Plug 'jparise/vim-graphql' " GraphQL
Plug 'styled-components/vim-styled-components' "Styled Components

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/jsonc.vim'

call plug#end()
