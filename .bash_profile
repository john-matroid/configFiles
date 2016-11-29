# Because .bash_profile has precedence over .bashrc in Apple computers,
# this file is necessary to guard against creating a .bash_profile and
# accidentally overrideing all of the configuration in .bashrc
#
# All it should do is load .bashrc
###

source "$HOME/.bashrc"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias gcm='git commit -m'
alias gaa='git add -A'
alias gco='git checkout'
alias gs='git status'
alias gb='git branch'
alias gd='git diff'
alias gdc='git diff --cached'
alias gpo='git push -u origin master'
alias gp='git push'
alias gpr='git pull --rebase'
alias grh='git reset --hard'
alias gl='git log'
alias glp='git log -p';
alias gds='git diff --staged'
alias gi='git init'
alias clone="git clone"
alias be='bundle exec'
alias ber='bundle exec rspec'
alias bi='bundle install'
alias ..='cd ..'
alias a.='atom .'
alias dk='cd ~/Desktop'
alias rc='rails c'
alias rdbc='rake db:create'
alias rdbd='rake db:drop'
alias rdbm='rake db:migrate'
alias rdbr='rake db:reset'
alias rdbs='rake db:seed'
alias rr='bundle exec rake routes'
alias rs='rails s'
alias cgrn='create-github-repo --name'

alias chrome="open -a 'Google Chrome'"
alias mvi="open -a MacVim.app $1"

alias ns='npm start'
alias ni='npm install'
alias nis='npm install --save'

alias grep="grep --color='auto'"
alias prettyjson="python -m json.tool"

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# show hidden files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

# hide hidden files
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# ssh to Matroid machine
alias sjd='ssh john-dev'
alias lnh='less nohup.out'

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
