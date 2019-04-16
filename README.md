# dans-dotfiles

Dans workstation repo

# How to use
Use symlinks to create symlinks from the root to the dotfiles in the config directory. Please note that the files must NOT exist in the root as `ln -s` will create them for you.
```
ln -s source target
```

# In use
## .vimrc
```sc
ln -s ~/config/.vimrc ~/.vimrc
```
## .zshrc
```sc
ln -s ~/config/zsh/.zshrc ~/.zshrc
```
## .spacemacs
```sc
ln -s ~/config/.spacemacs ~/.spacemacs
```

# TODO
* Create a bash script to automatically create symlinks for the relevant dotfiles.
