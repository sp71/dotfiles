alias g='git'
alias ga='git add'
alias gaa="git add ."
alias gb="git branch"
alias gbm='git branch --move'
alias gca!='git commit --verbose --all --amend'
alias gcam='git commit --all --message'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gd='git diff'
alias gdca='git diff --cached'
alias gdm="git diff main"
alias gds='git diff --staged'
alias gl='git pull'
alias glg='git log --stat'
alias gp='git push'
alias gpf='git push -f'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias gsoft="git reset --soft HEAD^"
alias gsh="git show"
alias gst="git status"
alias gss="git status -s"
alias gum="git checkout main; git pull; git checkout -; git rebase main"
alias grs='git restore'
alias prv='gh pr view -w'
export GIT_EDITOR=vim
git config --global push.default simple
git config --global push.autosetupremote true
git config --global core.pager less
git config --global pager.branch false

alias updateBazel="REPIN=1 bazel run @unpinned_maven//:pin"
alias invalidateCache="rm -rf /home/coder/.cache/JetBrains.backup; mv /home/coder/.cache/JetBrains /home/coder/.cache/JetBrains.backup"
alias updateIntelliJ="vim $(find ~/.cache/JetBrains -name idea64.vmoptions)"
alias docknuke='docker stop $(docker ps -aq) && docker rm $(docker ps -aq) && docker volume prune -f && docker network prune -f && docker rmi -f $(docker images -aq) && docker system prune -af --volumes'

alias services="cd /home/coder/lwcode/services"
alias rainbow="cd /home/coder/lwcode/rainbow"
alias sgm="cd /home/coder/lwcode/sgm"

alias runPreflight="./tools/preflight -p devtest-admin"
alias watchQueryService="services; watchexec --watch lql-builders -w query -w query-builder-core --restart tools/run-query-service"
alias watchIris="services; watchexec --watch iris --restart tools/run-iris"

export AWS_PROFILE=devtest-def-eng

PATH="$PATH:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin"

brew install watchexec
