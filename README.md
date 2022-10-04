# config
configuration files.

## Prerequisites  
+ Vundle
```
(if meta)
alias with-proxy="HTTPS_PROXY=http://fwdproxy:8080 HTTP_PROXY=http://fwdproxy:8080 FTP_PROXY=http://fwdproxy:8080 https_proxy=http://fwdproxy:8080 http_proxy=http://fwdproxy:8080 ftp_proxy=http://fwdproxy:8080 http_no_proxy='\''*.facebook.com|*.tfbnw.net|*.fb.com'\'"
with-proxy git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

(else)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```


# Install Plugins  
Launch vim and run `:PluginInstall`
To install from command line: `vim +PluginInstall +qall`
