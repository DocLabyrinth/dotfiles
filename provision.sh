#!/bin/zsh

USER=`whoami`

# package dependencies
sudo apt-get -y install curl vim zsh virtualbox silversearcher-ag libreadline-dev zlib1g-dev
chsh -s /usr/bin/zsh

# oh-my-zsh
test -d /home/$USER/.oh-my-zsh || curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# dotfiles
cp -r ./dotfiles/.* ~/
source ~/.zshrc

# vim-pathogen
test -d ~/.vim/autoload || mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# vim plugins
test -d ~/.vim/bundle/nerdtree || git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
test -d ~/.vim/bundle/nerdcommenter || git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter
test -d ~/.vim/bundle/vim-coffee-script/ || git clone https://github.com/kchmck/vim-coffee-script.git ~/.vim/bundle/vim-coffee-script/
test -d ~/.vim/bundle/ag || git clone https://github.com/rking/ag.vim  ~/.vim/bundle/ag

# pyenv and python(s)
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm
test -d ~/.pyenv || curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
source ~/.zshrc
pyenv global 2.7.9 || pyenv install 2.7.9
pyenv global 2.7.9

pip install virtualenvwrapper
mkdir -p ~/Virtualenvs

# rbenv and rub(y/ies)
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
test -d ~/.rbenv || git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
test -d ~/.rbenv/plugins/ruby-build || git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build 
source ~/.zshrc
rbenv global 2.1.2 || rbenv install 2.1.2
rbenv global 2.1.2


