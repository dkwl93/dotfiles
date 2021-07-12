# dans-dotfiles

Dans workstation repo

# Useful list of softare
## From App Store
* KakaoTalk
* Slack
* Things
* Xcode

## From web
* Pock - https://pock.dev/
* BetterTouchTool - https://folivora.ai/
* iTerm - https://iterm2.com/
* Alfred - https://www.alfredapp.com/
* Notion - https://www.notion.so/desktop

# How to use
## Pre-requisites
* Clone this repo into ~/
  * `cd ~`
  * `git init`
  * `git remote add origin https://github.com/dkwl93/dotfiles/`
  * `git fetch origin`
  * `git checkout -b master --track origin/master`
  * `git pull`
  * This gives us the settings we need to setup both desktop and CLI tools.
* Install Java
  * `https://java.com/en/download/`
 
## Setting up desktop apps
### iTerm
* Open settings (CMD + ,)
* General > Preferences 
* Check `Load preferences from a custom folder or URL`
* set `~/iterm` as the directory
* Save changes: `Automatically`
* Click `Save Now`
* Restart iTerm
* You may need to `git restore ~/iterm` to discard changes.

### BetterTouchTool
* Download BTT License - http://lostlicense.boastr.net
  * You will need `Order reference ID` and your `email`
* Open the downloaded license file.
* Downgrade to last covered version
* Restart BTT to latest covered version
* Manage Presets (Bottom left)
* import
* `~/dan.bttpreset`

### Alfred
* Disable spotlight
  * System Preferences -> Keyboard -> Shortcuts -> Spotlight
* Find Alfred Powerpack email
  * Search for `Your Alfred Powerpack License`
* Activate Alfred Powerpack using said credentials
* Skip Alfred Previous version migration
* Allow permissions for all
* Open preferences > Advanced
* Set preferences folder 
* `~/Alfred`
* Change Alfred toggle to cmd + space

## Steps
* Brew
  * `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
* NeoVim
  * `brew install neovim`
* python3
  * pip3 install --user neovim
* vim-plug
  * https://github.com/junegunn/vim-plug

# COC
## Plugins
* coc-tsserver
* coc-snippets
* coc-yaml
* coc-json
* coc-tslint-plugin
* coc-eslint
* coc-prettier
* coc-yank

# TODO
* Create a bash script to automatically create symlinks for the relevant dotfiles.
* Export and backup iTerm profile.
* Script
 * Install oh-my-zsh
   * `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
   * `git restore .zshrc` This is because oh-my-zsh overwrites clones .zshrc
 * Install zsh-autosuggestions
   * `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

 * Install brew
  * `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
 * NVM
  * `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash` 
  * Run following
```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```
   * nvm install --lts
   * nvm alias default "$(node --version)"
 
 * npm install --global yarn
 * yarn global add neovim
 * brew install neovim
 * pip3 install --user neovim
 * 
