export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/bin/elixir/bin:$PATH"
export PATH="$HOME/.node/bin:$PATH"

export NODE_PATH=/urs/local/lib/node:/usr/local/lib/node_modules:$NODE_PATH:/Users/john/.node/lib/node_modules
export GOPATH=$HOME/Documents/stupid_go

export GIT_EDITOR=vim

alias vim='/usr/local/Cellar/vim/7.4.712/bin/vim'
alias tat='tat.sh'

alias b='bundle'
alias b='bundle install'
alias be='bundle exec'

alias gs="git status"
alias ga="git add ."
alias gcb="git checkout -b"
alias gc="git checkout"
alias gcd="git checkout develop"
alias gm="git commit -m"
alias gcm="git checkout master"
alias gpom="git pull origin master"
alias gpo="git pull origin"
alias gpod="git pull origin develop"
alias gp="git pull"
alias gpud="git push origin develop"
alias gpuo="git push origin"
alias gpudft="git push origin develop --follow-tags"
alias gpus="git push origin staging"
alias gpusft="git push origin staging --follow-tags"
alias gpum="git push origin master"
alias gpumft="git push origin master --follow-tags"
alias gb="git branch"

alias nombom="npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install"

alias ber="bundle exec rake"
alias rt="bundle exec rake test"
alias rdm="bundle exec rake db:migrate"
alias rdr="bundle exec rake db:rollback"
alias rdp="bundle exec rake db:test:prepare"

alias devc="heroku run rails c -r development"
alias stagec="heroku run rails c -r staging"
alias prodc="heroku run rails c -r production"

alias devlog="heroku logs --tail -r development"
alias devlogs="heroku logs --tail -r development"
alias stagelog="heroku logs --tail -r staging"
alias stagelogs="heroku logs --tail -r staging"
alias prodlog="heroku logs --tail -r production"
alias prodlogs="heroku logs --tail -r production"

alias dockerboot="bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'"

alias gitx="open -a GitX ."

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

bind -r '\C-s'
stty -ixon

eval "$(rbenv init -)"
