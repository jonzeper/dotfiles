set -x PATH $PATH /Users/jon/bin
set -x EDITOR 'subl -w'


# Rvm
rvm default

# Pyenv
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
status --is-interactive; and . (pyenv init -|psub)
status --is-interactive; and . (pyenv virtualenv-init -|psub)

# Git aliases
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gcm='git commit -v -m'
alias gcp='git cherry-pick'
alias gA='git add -A'
alias gprom='git pull --rebase origin master'
alias gfrom='git fetch && git rebase -i origin/master'
alias garc='git add -A && git rebase --continue'
alias gss='git status'
alias gd='git diff --color=always'

# Other aliases
alias tf='terraform'
alias d-c='docker-compose'
alias kc='kubectl'
