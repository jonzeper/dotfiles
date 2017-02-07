# The rest of my fun git aliases
alias ga='git add'
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias clog="git log --graph --pretty=format:'%s - %Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff --color=always'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gcm='git commit -v -m'
alias gcp='git cherry-pick'

alias recent-branches='git branch --sort=-committerdate | head -n 8'

alias gpom='git pull origin master'
alias gprom='git pull --rebase origin master'
alias gfrom='git fetch && git rebase -i origin/master'
alias garc='git add -A && git rebase --continue'
alias gpm='git push origin master'
alias gph='git push heroku master'
gup () {
  git fetch && git checkout $1 && git reset --hard origin/$1
}

# gbom - git branch off master
# usage: gbom branchname SHA
# Creates a new branch off of latest master with the additional commit specified
# by the SHA. Pushes the new branch up to origin
gbom () {
  git checkout master;
  git pull origin master;
  git checkout -b $1;
  git cherry-pick $2;
  git push origin $1 -u;
}
alias wip='git add -A && gcm "WIP"'


alias gbd='git branch -d'

# Delete all merged branches
alias gbdall='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

alias gA='git add -A'
