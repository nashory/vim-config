# config
configuration files.


## Install VIM 8.2 on CensOS 7
~~~bash
sudo yum install -y gcc make ncurses ncurses-devel
sudo yum install -y ctags git tcl-devel ruby ruby-devel lua lua-devel luajit luajit-devel python python-devel perl perl-devel perl-ExtUtils-ParseXS perl-ExtUtils-XSpp perl-ExtUtils-CBuilder perl-ExtUtils-Embed
sudo yum remove -y vim-enhanced vim-common vim-filesystem
sudo rm -rf vim && sudo git clone https://github.com/vim/vim.git && cd vim
sudo ./configure --with-features=huge --enable-multibyte --enable-rubyinterp --enable-pythoninterp --enable-perlinterp --enable-luainterp
sudo make && sudo make install
cd /usr/bin && sudo unlink vim && sudo ln -s /usr/local/bin/vim vim
vim --version | less
~~~


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
(Ubuntu) sudo apt-get install ctags
(OS X) brew install ctags
(CentOS) sudo yum install ctags
~~~


# How to install plugins

+ [step 1.] copy & paste vimrc file to your user folder. (rename it to .vimrc)
+ [step 2.] open .vimrc, and `:PlugInstall` to install plugins.
+ [step 3.] open .vimrc, and `:PlugUpdate` to update plugins.



## Shortcuts
+ <`, + n`> ==>  activate NerdTree
+ <`ctrl + h`> ==>  move to left window
+ <`ctrl + j`> ==>  move to right window
+ <`ctrl + k`> ==>  move to upper window
+ <`ctrl + l`> ==>  move to below window
+ <`ctrl + o`> ==>  split window vertically
+ <`ctrl + i`> ==>  split window horizontally
+ <`ctrl + u`> ==>  close split window
+ <`F8`> ==>  activate Taglist (`fn + F8` for mac)


