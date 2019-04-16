# Because .bash_profile has precedence over .bashrc in Apple computers,
# this file is necessary to guard against creating a .bash_profile and
# accidentally overrideing all of the configuration in .bashrc
#
# All it should do is load .bashrc ###
source "$HOME/.bashrc" 
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

set -o vi
bind '"jk":vi-movement-mode'

alias gcm='git commit -m'
alias gaa='git add -A'
alias gam='git add -A && git commit -m'
alias gco='git checkout'
alias gs='git status'
alias gb='git branch'
alias gd='git diff'
alias gdc='git diff --cached'
alias gpo='git push -u origin master'
alias gp='git push'
alias pull='git pull'
alias gpr='git pull --rebase'
alias grh='git reset --hard'
alias gl='git log'
alias glo='git log --oneline'
alias glp='git log -p';
alias gds='git diff --staged'
alias gi='git init'
alias gclean='git branch --merged | egrep -v "(^\*|master)" | xargs git branch -d'
alias mergem='git merge master -m "merge master"'
alias master='git checkout master && git pull'
alias clone="git clone"
alias be='bundle exec'
alias ber='bundle exec rspec'
alias bi='bundle install'
alias ..='cd ..'
alias a.='atom .'
alias sub.='sublime .'
alias dk='cd ~/Desktop'
alias rc='rails c'
alias rdbc='rake db:create'
alias rdbd='rake db:drop'
alias rdbm='rake db:migrate'
alias rdbr='rake db:reset'
alias rdbs='rake db:seed'
alias rr='bundle exec rake routes'
alias cgrn='create-github-repo --name'

alias chrome="open -a 'Google Chrome'"
alias mvi="open -a MacVim.app $1"

alias oldvim='/usr/local/Cellar/vim/8.0.1600/bin/vim'
alias oldvim2='/usr/local/bin/vim'
alias vim='/opt/local/bin/vim'

alias ns='npm start'
alias ni='npm install'
alias nis='npm install --save'

alias tc='sudo yarn run test-controller'
alias tm='sudo yarn run test-models'

alias tu="sudo ln -fsn ../ 'node_modules/>' && sudo yarn test-ui"

alias grep="grep --color='auto'"
alias prettyjson="python -m json.tool"

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[31;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

alias myip='curl ipecho.net/plain ; echo'

# show hidden files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

# hide hidden files
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# ssh to Matroid machine
alias sja='ssh john-azure'
alias sxa='ssh xiaoyun-azure'
alias ssh='~/myssh.sh'
alias lnh='less nohup.out'
alias sop='ssh on-prem'

alias week='vim ~/Desktop/this-week.txt'

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#Matroid integration tests
alias testja='~/matroid/test/integration/run_selenium.sh https://john.devaz.matroid.com john@thematroid.com password 1 2'
alias teststaging='~/matroid/test/integration/run_selenium.sh https://staging.dev.matroid.com john@thematroid.com password 1 2'

# added by Anaconda3 4.3.0 installer
export PATH="//anaconda/bin:$PATH"
PATH=/opt/local/bin:$PATH

export MATROID_CLIENT_ID=oPqv1Z47Te7Je234
export MATROID_CLIENT_SECRET=vv3U6kxXTezmJTlsqVIMYK6pE1igmq6b

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
