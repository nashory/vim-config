# config
configuration files.


## VIM PATH
/usr/share/vim/vim74/colors


## Prerequisites
+ vim-plug
(https://github.com/junegunn/vim-plug)
~~~
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
~~~

+ ctags
~~~
sudo apt-get install ctags
~~~


# How to install plugins
[step 1.] copy & paste vimrc file to your user folder. (rename it to .vimrc)
[step 2.] open .vimrc, and `:PlugInstall` to install plugins.


## Shortcuts
+ <`, + n`> ==>  activate NerdTree
+ <`ctrl + h`> ==>  move to left window
+ <`ctrl + j`> ==>  move to right window
+ <`ctrl + k`> ==>  move to upper window
+ <`ctrl + l`> ==>  move to below window
+ <`F8`> ==>  activate Taglist (`fn + F8` for mac)


