export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
#export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/bin/elixir/bin:$PATH"
export PATH="/usr/local/bin/$PATH"
export PATH="$HOME/.node/bin:$PATH"
export PATH="/usr/local/Cellar/phantomjs/2.1.1/bin/:$PATH"
export PATH="~/.dotfiles/bin/:$PATH"
export PATH=$PATH:$(dirname $(go list -f '{{.Target}}' .))

export FLYCTL_INSTALL="/Users/john/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

export JAVA_HOME="$(/usr/libexec/java_home)"
export PATH="$HOME/.daml/bin:$PATH"

export ERL_AFLAGS="-kernel shell_history enabled"

export NODE_PATH="/usr/local/lib/node:/usr/local/lib/node_modules:$NODE_PATH:/Users/john/.node/lib/node_modules"
export GOPATH=$HOME/go

export GIT_EDITOR=vim

#alias vim='/usr/local/Cellar/vim/7.4.712/bin/vim'
#alias vim=nvim
alias tat='~/code/dotfiles/bin/tat'

alias b='bundle'
alias b='bundle install'
alias be='bundle exec'

alias gs="git status"
alias ga="git add ."
alias gcb="git checkout -b"
alias gc="git checkout"
alias gm="git commit -m"
alias gcs="git checkout staging"
alias gcm="git checkout master"
alias gpom="git pull origin master"
alias gpo="git pull origin"
alias gpos="git pull origin staging"
alias gp="git pull"
alias gpuo="git push origin"
alias gpus="git push origin staging"
alias gpusft="git push origin staging --follow-tags"
alias gpum="git push origin master"
alias gpumft="git push origin master --follow-tags"
alias gb="git branch"
alias gr="git remote -v"
alias gclean="git clean -i"

alias nombom="npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install"
alias leboom="npm cache clean -f && bower cache clean && rm -rf node_modules bower_components dist tmp && yarn install && bower install"
alias nb="npm i && bower i"

alias ber="bundle exec rake"
alias rt="bundle exec rake test"
alias rdm="bundle exec rake db:migrate"
alias rdr="bundle exec rake db:rollback"
alias rdp="bundle exec rake db:test:prepare"
alias rs="bundle exec rspec spec"

alias mdg="mix deps.get"
alias mem="mix ecto.migrate"
alias mer="mix ecto.rollback"
alias mps="iex -S mix phx.server"

alias mt="mix test"
alias mtm="mix test test/mealthy/"

alias stagec="heroku run rails c -r staging"
alias prodc="heroku run rails c -r production"

alias estagec="heroku run \"POOL_SIZE=1 iex -S mix\" -r staging"
alias eprodc="heroku run \"POOL_SIZE=1 iex -S mix\" -r production"

alias stagelog="heroku logs --tail -r staging"
alias stagelogs="heroku logs --tail -r staging"
alias prodlog="heroku logs --tail -r production"
alias prodlogs="heroku logs --tail -r production"

alias dockerboot="bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'"

alias gitx="open -a GitX ."

alias rbnev="rbenv"

alias rdbt="RAILS_ENV=test rails db:drop db:create db:migrate"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

bind -r '\C-s'
stty -ixon

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

HOMEBREW_PREFIX=$(brew --prefix)
if type brew &>/dev/null; then
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

eval "$(direnv hook bash)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/john/google-cloud-sdk/path.bash.inc' ]; then . '/Users/john/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/john/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/john/google-cloud-sdk/completion.bash.inc'; fi