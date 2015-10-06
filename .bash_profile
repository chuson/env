export PATH=$(brew --prefix)/sbin:$(brew --prefix)/bin:$PATH:$HOME/bin

function parse_git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}


export PS1="┌─[\[$(tput setaf 2)\]\u@\h\[$(tput sgr0)\]][\[$(tput setaf 3)\]\w\[$(tput sgr0)\]]\$(parse_git_branch)\n└─[\[$(tput setaf 2)\]\\$\[$(tput sgr0)\]] \[$(tput sgr0)\]"

export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000 
export HISTFILESIZE=100000
shopt -s histappend

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

function send_env {
  scp ~/.vimrc $1:~
  scp $UBER_HOME/remote_dotfiles/.bash_profile $1:~
  scp $UBER_HOME/remote_dotfiles/.screenrc $1:~
  ssh $1 '(git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && $1 vim -c PluginInstall -c quitall) || vim -c VundleUpdate -c PluginUpdate -c quitall'
}

function disable_airplay {
    sudo chmod 000 /System/Library/CoreServices/AirPlayUIAgent.app/Contents/MacOS/AirPlayUIAgent
}

function enable_airplay {
    sudo chmod 755 /System/Library/CoreServices/AirPlayUIAgent.app/Contents/MacOS/AirPlayUIAgent
}

alias sbp='source ~/.bash_profile'
