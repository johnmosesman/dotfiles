export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.node/bin:$PATH"
export PATH="$HOME/.dotfiles/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/emulator:$PATH"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"

export GIT_EDITOR=vim

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
alias gcm="git checkout main"
alias gpom="git pull origin main"
alias gpo="git pull origin"
alias gpos="git pull origin staging"
alias gp="git pull"
alias gpuo="git push origin"
alias gpus="git push origin staging"
alias gpusft="git push origin staging --follow-tags"
alias gpum="git push origin main"
alias gpumft="git push origin main --follow-tags"
alias mm="gc staging && gpo staging && gc main && git merge staging --ff-only"
alias gb="git branch"
alias gr="git remote -v"
alias gclean="git clean -i"

alias dev="npm run dev"
alias tst="npm run test"

alias nombom="npm cache clear && rm -rf node_modules && npm install"

alias rbnev="rbenv"
alias ber="bundle exec rake"
alias rt="bundle exec rake test"
alias rdm="bundle exec rake db:migrate"
alias rdr="bundle exec rake db:rollback"
alias rdp="bundle exec rake db:test:prepare"
alias rs="bundle exec rspec spec"
alias rdbt="RAILS_ENV=test rails db:drop db:create db:migrate"

alias stagec="heroku run rails c -r staging"
alias prodc="heroku run rails c -r production"

alias stagelog="heroku logs --tail -r staging"
alias stagelogs="heroku logs --tail -r staging"
alias prodlog="heroku logs --tail -r production"
alias prodlogs="heroku logs --tail -r production"

alias gitx="open -a GitX ."

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Automatic Node.js version switching based on .nvmrc
cd() {
  builtin cd "$@"
  if [ -f .nvmrc ]; then
    nvm use
  fi
}

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