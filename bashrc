export NODE_PATH=/urs/local/lib/node:/usr/local/lib/node_modules
export GIT_EDITOR=vim

alias vim='/usr/local/Cellar/vim/7.4.488/bin/vim'
alias b='bundle'
alias be='bundle exec'
alias gs="git status"
alias ga="git add ."
alias gcb="git checkout -b"
alias gc="git checkout"
alias gm="git commit -m"
alias gcm="git checkout master"
alias gpom="git pull origin master"
alias gpo="git pull origin"
alias gp="git pull"
alias gpu="git push"
alias gb="git branch"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
